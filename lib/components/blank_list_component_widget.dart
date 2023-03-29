import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'blank_list_component_model.dart';
export 'blank_list_component_model.dart';

class BlankListComponentWidget extends StatefulWidget {
  const BlankListComponentWidget({Key? key}) : super(key: key);

  @override
  _BlankListComponentWidgetState createState() =>
      _BlankListComponentWidgetState();
}

class _BlankListComponentWidgetState extends State<BlankListComponentWidget> {
  late BlankListComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlankListComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: () {
                if (MediaQuery.of(context).size.width >= 1170.0) {
                  return 700.0;
                } else if (MediaQuery.of(context).size.width <= 470.0) {
                  return 330.0;
                } else {
                  return 530.0;
                }
              }(),
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary30,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Color(0x33000000),
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryColor,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectionArea(
                      child: AutoSizeText(
                    'Welcome to our Chat AI app! We are excited to have you join our community of users who are exploring the possibilities of artificial intelligence and natural language processing. With our app, you can engage in conversations with our AI chatbot, which has been designed to understand and respond to your queries in a friendly and efficient manner.\n\nWhether you need help with a task, want to have a casual chat, or simply need some company, our Chat AI app is the perfect solution. Our chatbot is always available to chat with you and will keep you entertained with its engaging responses.\n\nWe understand that privacy and security are important to you, and we take that seriously. Our app is built with state-of-the-art security measures to protect your personal information and keep your conversations private.\n\nWe are constantly working to improve our app and add new features, so stay tuned for exciting updates in the future. Thank you for choosing our Chat AI app and we look forward to chatting with you!',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Roboto',
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          fontSize: 14.0,
                          lineHeight: 1.5,
                        ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
