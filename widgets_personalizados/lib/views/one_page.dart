import 'package:flutter/material.dart';
import 'package:widgets_personalizados/controllers/posts_controller.dart';
import '../widgets/custom_button_widget.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
  
}

class _OnePageState extends State<OnePage> {

  final PostController _controller = PostController();
  
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation:Listenable.merge([_controller.posts, _controller.inLoader]),
                builder:(_, __) => _controller.inLoader.value
                 ? const CircularProgressIndicator() : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _controller.posts.value.length,
                  itemBuilder: (_, idx) => ListTile(
                    title: Text(_controller.posts.value[idx].title,
                  ),
                  ),
                  )
               ),
              const SizedBox(height:10),
              CustomButtonWidget(
                disable: true,
                onPressed:() => _controller.callAPI(),
                title: 'Custom BTN',
                titleSize: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}







  
  