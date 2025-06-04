import 'package:flutter/material.dart';
import 'package:sonix/core/constants/constant_icons.dart';
import 'package:sonix/core/widgets/custom_textfield.dart';
import 'package:sonix/core/widgets/svg_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  bool isSearching = false;

  final List<String> suggestions = [
    'Lofi Chill',
    'Pop Ballad',
    'Top Trending',
    'Indie Việt',
    'EDM Remix',
    'R&B Slow',
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        isSearching = _controller.text.isNotEmpty;
      });
    });
  }

  void _cancelSearch() {
    _controller.clear();
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: CustomTextField(
                ctr: _controller,
                hintText: 'Tìm kiếm bài hát',
                prefixWidget: SvgWidget(ic: AppIcons.ic_search),
                keyboardType: TextInputType.text,
                icRight: AppIcons.ic_search,
              ),
            ),
            if (isSearching)
              TextButton(onPressed: _cancelSearch, child: const Text('Huỷ')),
          ],
        ),
      ),
      body:
          isSearching
              ? const Center(child: Text('Hiển thị kết quả tìm kiếm...'))
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Gợi ý cho bạn',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: ListView.separated(
                        itemCount: suggestions.length,
                        separatorBuilder: (_, __) => const Divider(),
                        itemBuilder: (context, index) {
                          final title = suggestions[index];
                          return ListTile(
                            leading: const Icon(Icons.music_note),
                            title: Text(title),
                            onTap: () {
                              _controller.text = title;
                              setState(() => isSearching = true);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
    );
  }
}
