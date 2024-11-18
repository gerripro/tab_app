import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tab_app/enums/component_type.dart';
import 'package:tab_app/models/style_dto.dart';
import 'package:tab_app/utils/color_util.dart';
import 'package:tab_app/utils/serializers.dart';

class TabOne extends StatefulWidget {
  final Future fetchFunction;

  const TabOne({super.key, required this.fetchFunction});

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.fetchFunction,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const CircularProgressIndicator();
        }
        var style = snapshot.data as StyleDto;
        var components = style.components;
        return Container(
          color: ColorUtils.getColorFromString(style.backgroundColor),
          constraints: const BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            child: Column(
              children: [
                for (var component in components) ...[
                  if (component.type == ComponentType.text)
                    Text(component.params.text!,
                        style: TextStyle(
                            fontSize: component.params.size,
                            color: ColorUtils.getColorFromString(
                                component.params.color!))),
                  if (component.type == ComponentType.margin)
                    SizedBox(
                      height: component.params.paddingH,
                      width: component.params.paddingV,
                    ),
                  if (component.type == ComponentType.input)
                    TextFormField(
                      controller:
                          TextEditingController(text: component.params.text),
                      style: TextStyle(
                          color: ColorUtils.getColorFromString(
                              component.params.color!)),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorUtils.getColorFromString(
                                      component.params.color!),
                                  width: 1))),
                    ),
                  if (component.type == ComponentType.nextButton)
                    MaterialButton(
                      onPressed: () {},
                      color: Color(int.parse(component.params.color!, radix: 16)),
                      child: Text(component.params.text!),
                    )
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
