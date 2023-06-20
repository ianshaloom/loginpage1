import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/clip_paths.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset('images/man.png'),
                  ),
                ),
                ClipPath(
                  clipper: DrawClip2(),
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffa58fd2),
                          Color(0xffddc3fc),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: DrawClip1(),
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffa58fd2),
                          Color(0xffddc3fc),
                        ],
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0, left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Welcome back,  ',
                            style: GoogleFonts.montserrat(
                              color: Colors.white70,
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            'Login Now',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      userInputField(hintText: 'Email Address', pass: false),
                      userInputField(hintText: 'Password', pass: true),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Forgot Password? ',
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 15,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Reset',
                              style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        enableFeedback: false,
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20,
                          ),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xff6a74ce),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Login',
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget userInputField({required String hintText, required bool pass}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: TextFormField(
          obscureText: pass ? true : false,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.montserrat(
              color: Colors.grey,
              fontWeight: FontWeight.w200,
            ),
            contentPadding: const EdgeInsets.only(top: 15, bottom: 15),
            prefixIcon: pass
                ? const Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey,
                  ),
            suffixIcon: pass
                ? null
                : const Icon(
                    Icons.assignment_turned_in_rounded,
                    color: Colors.greenAccent,
                  ),
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
