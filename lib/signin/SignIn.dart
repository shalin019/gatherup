import 'package:gatherup/signin/SignInModel.dart';

import '../FlutterFlowTheme.dart';
import '../FlutterFlowWidgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({super.key});

  @override
  State<SigninWidget> createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();


  }

  @override
  void dispose() {


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        /*backgroundColor: FlutterFlowTheme.of(context).primaryBackground,*/
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Text(
                        'GATHERUP',
                        /*style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),*/
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Text(
                        'SIGN IN',
                        /*style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),*/
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(

                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            /*labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),*/
                            hintText: 'Enter your email',
                            /*hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: 0.0,
                            ),*/
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            /*errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),*/
                            /*focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),*/
                            filled: true,
                            /*fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,*/
                          ),
                          //style:
                          /*FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),*/
                          /*cursorColor: FlutterFlowTheme.of(context).primaryText,*/

                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(

                          autofocus: false,
                          obscureText: false,
                          /*decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                            hintText: 'Enter your password',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: 0.0,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),*/
                          /*style:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                          cursorColor: FlutterFlowTheme.of(context).primaryText,*/

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'SIGN IN',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 45,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Colors.black,
                    /*textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter Tight',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),*/
                    elevation: 0,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
