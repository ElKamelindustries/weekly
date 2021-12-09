import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileNewWidget extends StatefulWidget {
  const ProfileNewWidget({Key key}) : super(key: key);

  @override
  _ProfileNewWidgetState createState() => _ProfileNewWidgetState();
}

class _ProfileNewWidgetState extends State<ProfileNewWidget> {
  String choiceChipsValue1;
  String choiceChipsValue2;
  String choiceChipsValue3;
  String choiceChipsValue4;
  String choiceChipsValue5;
  String choiceChipsValue6;
  TextEditingController textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Image.network(
                          'https://picsum.photos/seed/948/600',
                          width: MediaQuery.of(context).size.width,
                          height: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(1, 1),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 60,
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: FlutterFlowTheme.tertiaryColor,
                            size: 30,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(7.5, 0, 0, 0),
                        child: Text(
                          'NomePersona',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.85, 0),
                        child: Text(
                          '23',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Text(
                            'Bio',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 5),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '[Write here your bio...]',
                            hintStyle: FlutterFlowTheme.bodyText1,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: FlutterFlowTheme.bodyText1,
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Field is required';
                            }

                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Color(0xFFF5F5F5),
                      child: ExpandablePanel(
                        header: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Text(
                            'Interests',
                            style: FlutterFlowTheme.title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        collapsed: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 0, 18, 0),
                                child: FlutterFlowChoiceChips(
                                  initialOption: choiceChipsValue1 ??=
                                      'Programming',
                                  options: [
                                    ChipData('Programming', Icons.code)
                                  ],
                                  onChanged: (val) =>
                                      setState(() => choiceChipsValue1 = val),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.primaryColor,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    iconColor: Colors.white,
                                    iconSize: 15,
                                    elevation: 4,
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF262D34),
                                    ),
                                    iconColor: Color(0xFF262D34),
                                    iconSize: 18,
                                    elevation: 4,
                                  ),
                                  chipSpacing: 1,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 75, 0),
                                child: FlutterFlowChoiceChips(
                                  initialOption: choiceChipsValue2 ??=
                                      'Cooking',
                                  options: [
                                    ChipData('Cooking', Icons.local_pizza_sharp)
                                  ],
                                  onChanged: (val) =>
                                      setState(() => choiceChipsValue2 = val),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.primaryColor,
                                    textStyle:
                                        FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                    iconColor: Colors.white,
                                    iconSize: 15,
                                    elevation: 4,
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: Colors.white,
                                    textStyle:
                                        FlutterFlowTheme.bodyText2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF262D34),
                                    ),
                                    iconColor: Color(0xFF262D34),
                                    iconSize: 18,
                                    elevation: 4,
                                  ),
                                  chipSpacing: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                        expanded: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      initialOption: choiceChipsValue3 ??=
                                          'Programming',
                                      options: [
                                        ChipData('Programming', Icons.code)
                                      ],
                                      onChanged: (val) => setState(
                                          () => choiceChipsValue3 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                        iconColor: Colors.white,
                                        iconSize: 15,
                                        elevation: 4,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.white,
                                        textStyle:
                                            FlutterFlowTheme.bodyText2.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF262D34),
                                        ),
                                        iconColor: Color(0xFF262D34),
                                        iconSize: 12,
                                        elevation: 4,
                                      ),
                                      chipSpacing: 20,
                                    ),
                                  ),
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      initialOption: choiceChipsValue4 ??=
                                          'Cooking',
                                      options: [
                                        ChipData(
                                            'Cooking', Icons.local_pizza_sharp)
                                      ],
                                      onChanged: (val) => setState(
                                          () => choiceChipsValue4 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                        iconColor: Colors.white,
                                        iconSize: 15,
                                        elevation: 4,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.white,
                                        textStyle:
                                            FlutterFlowTheme.bodyText2.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF262D34),
                                        ),
                                        iconColor: Color(0xFF262D34),
                                        iconSize: 18,
                                        elevation: 4,
                                      ),
                                      chipSpacing: 20,
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: FlutterFlowChoiceChips(
                                      initialOption: choiceChipsValue5 ??=
                                          'Partying',
                                      options: [
                                        ChipData('Partying', Icons.whatshot)
                                      ],
                                      onChanged: (val) => setState(
                                          () => choiceChipsValue5 = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.primaryColor,
                                        textStyle:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                        ),
                                        iconColor: Colors.white,
                                        iconSize: 15,
                                        elevation: 4,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor: Colors.white,
                                        textStyle:
                                            FlutterFlowTheme.bodyText2.override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF262D34),
                                        ),
                                        iconColor: Color(0xFF262D34),
                                        iconSize: 12,
                                        elevation: 4,
                                      ),
                                      chipSpacing: 20,
                                    ),
                                  )
                                ],
                              ),
                              FlutterFlowChoiceChips(
                                initialOption: choiceChipsValue6 ??=
                                    'Astrology',
                                options: [
                                  ChipData('Astrology', Icons.auto_awesome)
                                ],
                                onChanged: (val) =>
                                    setState(() => choiceChipsValue6 = val),
                                selectedChipStyle: ChipStyle(
                                  backgroundColor:
                                      FlutterFlowTheme.primaryColor,
                                  textStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                                  iconColor: Colors.white,
                                  iconSize: 15,
                                  elevation: 4,
                                ),
                                unselectedChipStyle: ChipStyle(
                                  backgroundColor: Colors.white,
                                  textStyle:
                                      FlutterFlowTheme.bodyText2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF262D34),
                                  ),
                                  iconColor: Color(0xFF262D34),
                                  iconSize: 18,
                                  elevation: 4,
                                ),
                                chipSpacing: 20,
                              )
                            ],
                          ),
                        ),
                        theme: ExpandableThemeData(
                          tapHeaderToExpand: true,
                          tapBodyToExpand: false,
                          tapBodyToCollapse: false,
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center,
                          hasIcon: true,
                          expandIcon: Icons.edit_sharp,
                          iconSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color(0xFFF5F5F5),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Text(
                            'Your Song',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                              child: Container(
                                width: 100,
                                height: 100,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.network(
                                  'https://images-eu.ssl-images-amazon.com/images/I/517bU%2BpvBZL._SY445_SX342_QL70_ML2_.jpg',
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.25, -0.26),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 27.5, 0, 0),
                              child: Text(
                                'Papaya -  Yiuliusly',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
