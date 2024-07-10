import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utills/constants/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final bloc = profileBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Uni Neue',
              fontWeight: FontWeight.w600,
            ),
          )),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: const ImageIcon(
                AssetImage(
                  'assets/icons/edit.png',
                ),
                color: Colors.white,
                size: 22,
              ),
              onPressed: () {},
            ),
          ],
          elevation: 0,
          backgroundColor: redColor,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: ShapeDecoration(
                color: redColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // color: Colors.deepPurple
                          ),
                          child: const CircularProgressIndicator(),
                        ),
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage('assets/images/img.png'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(CurrentUser.userName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Uni Neue',
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 21.0, vertical: 12),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'User Name',
            //             style: TextStyle(
            //               color: redColor,
            //               fontSize: 14,
            //               fontFamily: 'Uni Neue',
            //               fontWeight: FontWeight.w700,
            //             ),
            //           ),
            //           Text(
            //             CurrentUser.userName,
            //             style: TextStyle(
            //               color: Theme.of(context).textTheme.bodySmall?.color,
            //               fontSize: 14,
            //               fontWeight: FontWeight.w700,
            //             ),
            //           )
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         decoration: ShapeDecoration(
            //           shape: RoundedRectangleBorder(
            //             side: BorderSide(
            //               width: 0.5,
            //               strokeAlign: BorderSide.strokeAlignCenter,
            //               color: Theme.of(context).colorScheme.primary,
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      SizedBox(height: 16),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "User Name",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Text('saidmurod0321')
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Text("saidmurod.tursunaliyev@gamil.com")
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Change Password",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Icon(Icons.arrow_forward_ios,
                                    color: Color(0xFF787878))
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Notification",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Icon(Icons.notifications,
                                    color: Color(0xFF787878))
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Enable Dark Mode",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Icon(Icons.dark_mode, color: Color(0xFF787878))
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Text(
                                  "Settings",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFFF26B6C)),
                                ),
                                Spacer(),
                                Icon(Icons.settings, color: Color(0xFF787878))
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Container(
                            height: 2,
                            color: Color(0xFFF2F2F2),
                          )
                        ],
                      ),
                    ],
                  ),
                ))
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 21.0, vertical: 12),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Email',
            //             style: TextStyle(
            //               color: redColor,
            //               fontSize: 14,
            //               fontFamily: 'Uni Neue',
            //               fontWeight: FontWeight.w700,
            //             ),
            //           ),
            //           Builder(builder: (context) {
            //             var email = CurrentUser.email;
            //             var index = email.indexOf('@');
            //
            //             return Text(
            //               (email.substring(0, index).length > 20)
            //                   ? '${email.substring(0, index).substring(0, 20)}...${email.substring(index, email.length)}'
            //                   : email,
            //               style: TextStyle(
            //                 color: Theme.of(context).textTheme.bodySmall?.color,
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w700,
            //               ),
            //             );
            //           })
            //         ],
            //       ),
            //       const SizedBox(height: 10),
            //       Container(
            //         decoration: ShapeDecoration(
            //           shape: RoundedRectangleBorder(
            //             side: BorderSide(
            //               width: 0.5,
            //               strokeAlign: BorderSide.strokeAlignCenter,
            //               color: Theme.of(context).colorScheme.primary,
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 21.0, vertical: 12),
            //   child: Column(
            //     children: [
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             'Dark Mode',
            //             style: TextStyle(
            //               color: redColor,
            //               fontSize: 14,
            //               fontFamily: 'Uni Neue',
            //               fontWeight: FontWeight.w700,
            //             ),
            //           ),
            //           BlocBuilder<ProfileBloc, ProfileState>(
            //             builder: (context, state) {
            //               return Switch(
            //                 value: state.switchValue ?? false,
            //                 onChanged: (value) => BlocProvider.of<ProfileBloc>(context).add(ChangeSwitch(value)),
            //               );
            //             },
            //           )
            //         ],
            //       ),
            //       const SizedBox(height: 10),
            //       Container(
            //         decoration: const ShapeDecoration(
            //           shape: RoundedRectangleBorder(
            //             side: BorderSide(
            //               width: 1,
            //               strokeAlign: BorderSide.strokeAlignCenter,
            //               color: Color(0xFFF2F2F2),
            //             ),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
