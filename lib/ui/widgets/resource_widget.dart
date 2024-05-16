import 'package:flutter/material.dart';
import 'package:llh/models/resource/resource.dart';

class ResourceWidget extends StatefulWidget {
  final Resource resource;
  const ResourceWidget({super.key, required this.resource});

  @override
  State<ResourceWidget> createState() => _ResourceWidgetState();
}

class _ResourceWidgetState extends State<ResourceWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 256,
        width: 196,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.black38,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.resource.icon),
                        ),
                      ),
                      height: 64,
                      width: 64,
                    ),
                    Column(
                      children: [
                        Text(
                          widget.resource.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          widget.resource.id,
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rarity: ${widget.resource.rarity.toString().replaceRange(0, 7, '')}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    widget.resource.description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    '${widget.resource.amount} / ${widget.resource.capacity}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => widget.resource
                      .copyWith(amount: widget.resource.amount--),
                  icon: Icon(Icons.remove),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
