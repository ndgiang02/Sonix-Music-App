import 'package:flutter/material.dart';
import 'package:sonix/core/common/translations/l10n.dart';
import 'package:sonix/core/common/widgets/custom_textfield.dart';
import 'package:sonix/core/common/widgets/svg_widget.dart';
import 'package:sonix/core/configs/constants/icons.dart';
import 'package:sonix/core/utils/responsive.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      ctr: _controller,
                      hintText: 'Tìm kiếm bài hát',
                      prefixWidget: SvgWidget(
                        ic: icSearch,
                        height: 10,
                        width: 10,
                        color: Colors.black,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                  if (isSearching)
                    TextButton(
                      onPressed: _cancelSearch,
                      child: Text(S.of(context).txt_cancel),
                    ),
                ],
              ),
              const SizedBox(height: Spacing.x4),
              const Text(
                'Gợi ý cho bạn',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
