import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import "package:collection/collection.dart";
import 'dart:convert';

import 'cartItems.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var flowers = [
    {
      "id": "63a2a67b12f04fffb648f065",
      "tag": ["latest", "nature"],
      "index": 0,
      "cost": "\$1,843.57",
      "picture": "https://wallpaperaccess.com/full/445128.jpg",
      "description":
          "Occaecat eiusmod labore labore aute magna et. Sint exercitation aliqua ex eu ex consequat voluptate proident irure reprehenderit ipsum. In laborum eiusmod officia non laborum aute do in quis. Esse excepteur ipsum id anim ut.\r\n"
    },
    {
      "id": "63a2a67baa1bde5087a24a64",
      "tag": ["brown", "open"],
      "index": 1,
      "cost": "\$3,518.37",
      "picture": "https://wallpaperaccess.com/full/530596.jpg",
      "description":
          "Exercitation culpa anim incididunt consequat esse aliquip exercitation. Irure deserunt cupidatat nisi pariatur tempor do qui esse cupidatat ad cupidatat do. Eiusmod quis enim voluptate amet officia commodo esse commodo exercitation enim. Voluptate ut irure eiusmod eiusmod amet fugiat dolore qui velit irure labore excepteur velit consectetur.\r\n"
    },
    {
      "id": "63a2a67b128ed1f592722d1d",
      "tag": ["open", "brown"],
      "index": 2,
      "cost": "\$1,237.52",
      "picture": "https://wallpaperaccess.com/full/863977.jpg",
      "description":
          "Occaecat deserunt cillum commodo sit deserunt. Mollit laboris nostrud labore dolor elit voluptate quis cupidatat incididunt ipsum cupidatat Lorem. Labore sunt deserunt do amet ea dolor ullamco laboris mollit enim consectetur eiusmod.\r\n"
    },
    {
      "id": "63a2a67b455d04eb48599927",
      "tag": ["latest", "latest"],
      "index": 3,
      "cost": "\$1,477.04",
      "picture": "https://wallpaperaccess.com/full/110401.jpg",
      "description":
          "Consequat quis deserunt occaecat cillum laboris duis ex sunt dolore. Minim sunt amet officia ad magna elit incididunt excepteur fugiat sunt nisi occaecat eiusmod. Irure aliquip dolore ullamco elit tempor esse ex nostrud est.\r\n"
    },
    {
      "id": "63a2a67b93b0b741bba40513",
      "tag": ["latest", "seasonal"],
      "index": 4,
      "cost": "\$3,059.92",
      "picture": "https://wallpaperaccess.com/full/367807.jpg",
      "description":
          "Officia proident sint quis commodo. Duis laboris Lorem nulla reprehenderit minim sunt. Enim sunt id non aliqua adipisicing. Ut nisi irure non dolor culpa nisi nulla et. Incididunt ad incididunt magna dolore enim mollit excepteur enim ea ea est non sit dolore.\r\n"
    },
    {
      "id": "63a2a67bd9ad65d87d30a6c2",
      "tag": ["latest", "nature"],
      "index": 5,
      "cost": "\$1,878.36",
      "picture": "https://wallpaperaccess.com/full/508187.jpg",
      "description":
          "Non amet sint do ad in labore pariatur. Amet non nostrud nostrud cillum. Excepteur deserunt deserunt est occaecat. Ea incididunt laborum magna sunt esse eu aliquip veniam. Duis mollit excepteur occaecat quis minim dolore.\r\n"
    },
    {
      "id": "63a2a67bf9bc10cca99b9774",
      "tag": ["open", "open"],
      "index": 6,
      "cost": "\$2,278.19",
      "picture": "https://wallpaperaccess.com/full/476503.jpg",
      "description":
          "Sit consequat quis amet aliqua amet mollit cupidatat consectetur cillum anim nostrud esse cillum. Nisi anim excepteur adipisicing laborum occaecat do anim do magna excepteur deserunt sunt adipisicing veniam. Cupidatat quis excepteur nulla fugiat quis eu cupidatat eiusmod aute dolor qui nisi. Quis incididunt incididunt ex irure nulla. Incididunt incididunt enim proident cupidatat commodo laborum ad occaecat dolor. Qui occaecat nisi do est. Aliquip qui id nulla culpa laboris ea dolor exercitation veniam.\r\n"
    },
    {
      "id": "63a2a67b2b6895100fa6b766",
      "tag": ["brown", "open"],
      "index": 7,
      "cost": "\$1,068.51",
      "picture": "https://wallpaperaccess.com/full/788682.jpg",
      "description":
          "Occaecat ullamco tempor mollit amet nulla in eiusmod excepteur ut. In incididunt Lorem tempor eiusmod duis. Ea in qui esse cillum ullamco eiusmod eu cillum duis ut mollit. Adipisicing est dolore id excepteur aute cillum sit.\r\n"
    },
    {
      "id": "63a2a67b1b2c31a104c600c2",
      "tag": ["open", "golden"],
      "index": 8,
      "cost": "\$3,150.51",
      "picture": "https://wallpaperaccess.com/full/998769.jpg",
      "description":
          "Pariatur voluptate qui anim deserunt voluptate. Officia nostrud elit exercitation fugiat quis enim. Esse laboris esse qui do est dolor aliquip dolore eu laboris voluptate mollit. Laborum excepteur enim aliqua fugiat sit sit id consequat ad aliquip. Cillum aliqua minim labore incididunt eu exercitation enim deserunt aute Lorem et duis. Labore ullamco consequat aliqua mollit voluptate eu veniam proident irure ut mollit.\r\n"
    },
    {
      "id": "63a2a67ba8f13c19b3d2f6bf",
      "tag": ["open", "golden"],
      "index": 9,
      "cost": "\$1,150.90",
      "picture": "https://wallpaperaccess.com/full/208440.jpg",
      "description":
          "Magna ullamco ipsum tempor sint adipisicing ea sint. Consectetur nisi dolore laborum dolore labore deserunt. Aliquip fugiat commodo id laborum amet.\r\n"
    },
    {
      "id": "63a2a67b9b4ddf918750e6f5",
      "tag": ["brown", "open"],
      "index": 10,
      "cost": "\$1,973.32",
      "picture": "https://wallpaperaccess.com/full/913950.jpg",
      "description":
          "Ex non sint cupidatat eu ullamco sint est. Proident eu voluptate ex ut dolore veniam ea. Duis sit deserunt officia ipsum aliqua duis Lorem commodo proident eiusmod sit id anim. Laborum commodo aliquip nulla ullamco consequat cillum laborum ea sint. Velit aliqua do cillum commodo sit.\r\n"
    },
    {
      "id": "63a2a67b74ac826a84d94326",
      "tag": ["open", "seasonal"],
      "index": 11,
      "cost": "\$2,627.42",
      "picture": "https://wallpaperaccess.com/full/959824.jpg",
      "description":
          "Ut fugiat anim dolor aliqua do officia deserunt in aliqua anim. Officia fugiat Lorem in ut. Veniam cillum occaecat laborum nisi adipisicing ex dolor anim dolor consequat non officia minim veniam. Eiusmod in aliquip ut esse.\r\n"
    },
    {
      "id": "63a2a67be7dea0e82feb64d8",
      "tag": ["nature", "golden"],
      "index": 12,
      "cost": "\$3,447.42",
      "picture": "https://wallpaperaccess.com/full/722619.jpg",
      "description":
          "Adipisicing velit pariatur nisi est exercitation. Quis sint veniam mollit ut enim eu quis est nulla. Minim pariatur nulla ea ad laborum fugiat minim. Et fugiat proident Lorem id aliqua magna labore eiusmod voluptate qui duis anim nulla reprehenderit. Ex duis id velit sunt esse. Veniam do voluptate cupidatat elit ex proident occaecat dolore aute consequat nisi ex. Anim ullamco labore sunt ea pariatur aliqua commodo adipisicing anim cillum sunt.\r\n"
    },
    {
      "id": "63a2a67b56d3d71910f20558",
      "tag": ["brown", "brown"],
      "index": 13,
      "cost": "\$1,206.51",
      "picture": "https://wallpaperaccess.com/full/607042.jpg",
      "description":
          "Id ipsum ea magna occaecat adipisicing adipisicing excepteur. Laborum sint proident consequat commodo ea laboris fugiat voluptate excepteur. Pariatur incididunt quis reprehenderit minim amet cillum mollit.\r\n"
    },
    {
      "id": "63a2a67bc63d489ae095fd8d",
      "tag": ["open", "nature"],
      "index": 14,
      "cost": "\$3,635.83",
      "picture": "https://wallpaperaccess.com/full/426561.jpg",
      "description":
          "Proident cillum consequat ut incididunt ullamco ut ea. Labore est fugiat ipsum aute anim eu adipisicing ut sit esse do excepteur labore. Fugiat aute ex culpa deserunt ad. Sit excepteur eiusmod culpa veniam est duis ut anim in aliquip est. Quis consequat tempor enim dolore esse sunt mollit consectetur irure ex. Minim minim incididunt deserunt dolore magna occaecat non qui incididunt nisi.\r\n"
    },
    {
      "id": "63a2a67bbc79ebd69a8fe5eb",
      "tag": ["brown", "open"],
      "index": 15,
      "cost": "\$1,994.93",
      "picture": "https://wallpaperaccess.com/full/578902.jpg",
      "description":
          "Consequat est ad consequat consectetur labore duis aliqua officia nisi ut. Cillum aute dolor amet commodo mollit velit dolore veniam pariatur qui elit mollit. Consectetur voluptate ad ea eiusmod id tempor ex. Mollit laborum mollit commodo consequat deserunt. Nulla veniam sit amet irure officia ex deserunt aliqua magna ad duis in.\r\n"
    },
    {
      "id": "63a2a67bcce4b8a0dc71cd4a",
      "tag": ["latest", "golden"],
      "index": 16,
      "cost": "\$2,229.80",
      "picture": "https://wallpaperaccess.com/full/659406.jpg",
      "description":
          "Eiusmod est duis magna ex nostrud reprehenderit exercitation mollit tempor irure non quis. Incididunt in aliquip consectetur aliqua nostrud amet proident adipisicing sint Lorem tempor cillum in. Consectetur deserunt veniam qui consequat labore labore adipisicing labore labore. Sunt aliquip amet consectetur et ipsum.\r\n"
    },
    {
      "id": "63a2a67bed7db74cdd13bd17",
      "tag": ["brown", "golden"],
      "index": 17,
      "cost": "\$1,212.25",
      "picture": "https://wallpaperaccess.com/full/449337.jpg",
      "description":
          "Sunt Lorem anim et sint pariatur. Excepteur culpa incididunt cupidatat reprehenderit. Eiusmod nisi nostrud Lorem aute quis deserunt ipsum.\r\n"
    },
    {
      "id": "63a2a67b13ae13b9188f700d",
      "tag": ["brown", "golden"],
      "index": 18,
      "cost": "\$1,536.96",
      "picture": "https://wallpaperaccess.com/full/471436.jpg",
      "description":
          "Minim fugiat proident aliqua exercitation laborum laboris culpa esse quis ex laboris qui do qui. Laborum voluptate eu dolore cupidatat. Commodo est adipisicing deserunt aliquip culpa veniam dolor in ea proident id incididunt eiusmod nulla. Sit aliqua in sit dolor est quis mollit deserunt enim quis. Voluptate eiusmod aliqua ullamco esse ad reprehenderit excepteur nulla aliquip sunt.\r\n"
    },
    {
      "id": "63a2a67bff7ebfcfd517d9cc",
      "tag": ["brown", "nature"],
      "index": 19,
      "cost": "\$3,116.32",
      "picture": "https://wallpaperaccess.com/full/526257.jpg",
      "description":
          "Dolore ex minim aliqua elit incididunt. Adipisicing officia ex velit sit proident enim laborum esse sit veniam voluptate officia ex enim. Mollit aliqua Lorem elit dolore voluptate duis laborum occaecat aliqua. Laborum proident duis sunt id nisi magna incididunt consequat quis ullamco laborum non. Reprehenderit amet culpa ullamco occaecat ipsum incididunt nostrud labore dolore amet. Ea commodo irure nulla in fugiat non nisi consectetur magna occaecat cillum voluptate deserunt qui.\r\n"
    },
    {
      "id": "63a2a67bcaf2995157441024",
      "tag": ["brown", "nature"],
      "index": 20,
      "cost": "\$2,255.20",
      "picture": "https://wallpaperaccess.com/full/273217.jpg",
      "description":
          "Ad enim ullamco dolor reprehenderit officia incididunt et duis anim ea eu ut quis pariatur. Velit fugiat ea non dolore cillum cupidatat. Cillum nostrud non culpa consectetur. Exercitation nisi do reprehenderit occaecat incididunt.\r\n"
    },
    {
      "id": "63a2a67bc8b4963b9fdb88be",
      "tag": ["nature", "nature"],
      "index": 21,
      "cost": "\$3,888.01",
      "picture": "https://wallpaperaccess.com/full/901247.jpg",
      "description":
          "Mollit cupidatat incididunt enim adipisicing irure ea in nulla elit aliqua. Occaecat dolore nulla eiusmod amet. Duis amet nulla ullamco fugiat ullamco voluptate aliqua.\r\n"
    },
    {
      "id": "63a2a67bb84936a95aa1e457",
      "tag": ["brown", "latest"],
      "index": 22,
      "cost": "\$2,952.41",
      "picture": "https://wallpaperaccess.com/full/565020.jpg",
      "description":
          "Ullamco nulla consequat exercitation anim. Quis minim veniam laborum amet culpa magna nulla qui minim tempor pariatur. Incididunt in anim est duis ad deserunt cupidatat velit. Laboris voluptate consectetur incididunt ex laboris occaecat pariatur. Fugiat pariatur anim non incididunt aute pariatur qui laborum veniam reprehenderit cillum ipsum consequat exercitation. Labore pariatur aute ullamco proident exercitation fugiat consequat ex.\r\n"
    },
    {
      "id": "63a2a67b243a2d9a7f3370b3",
      "tag": ["latest", "latest"],
      "index": 23,
      "cost": "\$2,172.01",
      "picture": "https://wallpaperaccess.com/full/728599.jpg",
      "description":
          "Tempor pariatur ex occaecat commodo eu incididunt elit ad officia fugiat qui. Nostrud qui voluptate do ex aute nostrud minim elit amet ut. In amet officia ullamco esse commodo fugiat in ex incididunt. Ea incididunt occaecat laboris aute commodo in ullamco tempor cillum nulla est. Aliquip commodo incididunt anim deserunt dolore cillum eiusmod labore cupidatat. Proident magna culpa proident cillum consectetur minim.\r\n"
    },
    {
      "id": "63a2a67b7a89f43a41258e10",
      "tag": ["brown", "golden"],
      "index": 24,
      "cost": "\$1,538.01",
      "picture": "https://wallpaperaccess.com/full/191161.jpg",
      "description":
          "Culpa do dolore minim laboris in occaecat minim aute amet amet. Ipsum eiusmod ut esse officia eu elit Lorem enim. Laboris do est id esse esse velit eu sunt enim et voluptate in amet. Adipisicing ut ullamco id laborum sunt Lorem duis mollit do pariatur. Enim veniam qui exercitation Lorem. Aute Lorem duis labore sit culpa Lorem.\r\n"
    },
    {
      "id": "63a2a67b3586a9a0c61b1832",
      "tag": ["golden", "seasonal"],
      "index": 25,
      "cost": "\$1,868.38",
      "picture": "https://wallpaperaccess.com/full/483966.jpg",
      "description":
          "Ipsum Lorem aliqua ad duis amet quis minim consequat sint incididunt fugiat enim magna. Veniam duis ut enim laboris non deserunt quis do labore veniam. Amet minim id duis nisi excepteur est cupidatat. Id et qui dolore occaecat pariatur sit id velit et enim dolore nisi mollit ex. Sit est labore aliqua fugiat amet incididunt labore eiusmod quis excepteur sint fugiat aliquip. Tempor nostrud aliqua do incididunt ad Lorem non eiusmod consequat. Laboris esse magna quis excepteur enim nostrud.\r\n"
    },
    {
      "id": "63a2a67b6ee83fc7fcef221b",
      "tag": ["latest", "latest"],
      "index": 26,
      "cost": "\$1,767.13",
      "picture": "https://wallpaperaccess.com/full/402240.jpg",
      "description":
          "Officia velit ea incididunt aliqua. Proident aliquip elit cupidatat Lorem esse. Duis incididunt officia cupidatat labore cupidatat aute reprehenderit officia labore et. Ipsum reprehenderit nostrud est voluptate adipisicing et ullamco voluptate proident. Do velit incididunt in enim elit excepteur culpa eiusmod pariatur sit fugiat laborum.\r\n"
    },
    {
      "id": "63a2a67b7eef86c10c26a789",
      "tag": ["golden", "nature"],
      "index": 27,
      "cost": "\$3,506.96",
      "picture": "https://wallpaperaccess.com/full/599224.jpg",
      "description":
          "Adipisicing officia dolor irure est proident dolore aliquip anim ipsum minim commodo. Ullamco anim aute reprehenderit ipsum do est incididunt minim laborum proident pariatur. Reprehenderit sit ut esse laborum exercitation aute proident occaecat quis.\r\n"
    },
    {
      "id": "63a2a67ba02209759fb25917",
      "tag": ["brown", "seasonal"],
      "index": 28,
      "cost": "\$2,574.44",
      "picture": "https://wallpaperaccess.com/full/486298.jpg",
      "description":
          "Do labore reprehenderit magna amet laborum velit ea nisi mollit. Qui consectetur exercitation reprehenderit anim culpa aliqua nostrud esse. Exercitation aliquip commodo eiusmod reprehenderit nisi eiusmod deserunt esse. Id reprehenderit nisi exercitation in tempor labore aliquip est officia nisi sint pariatur mollit excepteur. Aliqua voluptate proident occaecat dolore id aliqua sit fugiat ea consectetur minim eiusmod. Incididunt et proident ut consequat incididunt voluptate incididunt. Esse quis ullamco cillum laboris nulla.\r\n"
    },
    {
      "id": "63a2a67b6eeabd19170a6d7b",
      "tag": ["brown", "nature"],
      "index": 29,
      "cost": "\$2,821.52",
      "picture": "https://wallpaperaccess.com/full/512969.jpg",
      "description":
          "Ullamco in dolore et incididunt anim est ut sint. Reprehenderit nostrud voluptate laboris voluptate laborum nulla pariatur officia. Occaecat est incididunt nisi nulla magna Lorem tempor culpa tempor ex sunt. Est est adipisicing id sit sint ad ad sint culpa aliquip. Esse velit cillum ex laboris eu. Nulla id labore Lorem sit veniam veniam enim velit duis cillum et cupidatat exercitation. Elit id mollit adipisicing exercitation incididunt cupidatat eiusmod cillum.\r\n"
    },
    {
      "id": "63a2a67b121ae483b8376aa0",
      "tag": ["seasonal", "brown"],
      "index": 30,
      "cost": "\$1,027.57",
      "picture": "https://wallpaperaccess.com/full/914172.jpg",
      "description":
          "Labore aute nostrud esse ex excepteur velit culpa. Ea quis nulla amet amet veniam amet consectetur reprehenderit nostrud laboris cupidatat commodo cupidatat. Culpa sit enim cupidatat consectetur nostrud enim sunt nulla nostrud deserunt laborum ullamco in pariatur. Sunt dolore est nulla cillum ex qui qui excepteur. Reprehenderit velit aliquip Lorem ea veniam esse nulla.\r\n"
    },
    {
      "id": "63a2a67bff179e44d5685016",
      "tag": ["golden", "latest"],
      "index": 31,
      "cost": "\$2,932.62",
      "picture": "https://wallpaperaccess.com/full/519494.jpg",
      "description":
          "Do exercitation sunt elit et exercitation Lorem dolor cillum non aute eiusmod ex Lorem commodo. Cillum qui nisi veniam irure. Est magna ut quis Lorem amet sit aute laboris voluptate non. Magna id officia do consequat tempor. Ad non enim culpa voluptate proident amet cillum qui pariatur.\r\n"
    },
    {
      "id": "63a2a67b4611e7aed4d62f4f",
      "tag": ["open", "seasonal"],
      "index": 32,
      "cost": "\$1,286.53",
      "picture": "https://wallpaperaccess.com/full/714168.jpg",
      "description":
          "Elit officia incididunt ex officia duis anim magna. Ea ut pariatur laboris labore ipsum magna dolor quis cillum anim do qui. Tempor commodo ex est sit elit proident tempor sunt eiusmod elit officia proident fugiat consectetur. Excepteur adipisicing adipisicing do nulla ex adipisicing esse. Velit dolore ad nostrud nostrud nostrud in officia ullamco eiusmod magna nostrud dolore sit. Quis aliqua esse consectetur amet consequat velit do deserunt minim minim. Minim do pariatur enim do do.\r\n"
    },
    {
      "id": "63a2a67bae8d82732f1533e6",
      "tag": ["latest", "latest"],
      "index": 33,
      "cost": "\$3,686.02",
      "picture": "https://wallpaperaccess.com/full/842935.jpg",
      "description":
          "Elit ea aliquip ea non incididunt irure Lorem do deserunt. Eu Lorem irure ullamco est qui adipisicing elit dolor reprehenderit reprehenderit consectetur qui sit consectetur. Labore occaecat ex laborum commodo enim et excepteur. Labore sunt amet ad in velit irure ullamco culpa pariatur est laborum irure eu. Officia ullamco proident aliqua est. Do laboris laboris velit sunt amet ea aliqua eu exercitation excepteur tempor cillum. Elit sunt esse aute eiusmod commodo mollit.\r\n"
    },
    {
      "id": "63a2a67bcfa72fdf6d77cea1",
      "tag": ["nature", "golden"],
      "index": 34,
      "cost": "\$2,795.08",
      "picture": "https://wallpaperaccess.com/full/694557.jpg",
      "description":
          "Dolor anim aliquip aute pariatur labore. Amet adipisicing tempor aliqua Lorem et eiusmod adipisicing ut incididunt sit. Ipsum non quis eiusmod fugiat aliquip officia esse incididunt ut elit exercitation enim.\r\n"
    },
    {
      "id": "63a2a67b4048a24f14c2addb",
      "tag": ["latest", "nature"],
      "index": 35,
      "cost": "\$2,931.06",
      "picture": "https://wallpaperaccess.com/full/147270.jpg",
      "description":
          "Ullamco ex ut id laboris occaecat laboris non adipisicing commodo anim. Laborum et ipsum aute non ea dolor mollit proident cillum aliqua. Ipsum mollit sint sint sunt velit velit excepteur minim commodo aute.\r\n"
    },
    {
      "id": "63a2a67b37422791b9d26009",
      "tag": ["nature", "golden"],
      "index": 36,
      "cost": "\$3,026.78",
      "picture": "https://wallpaperaccess.com/full/752333.jpg",
      "description":
          "Culpa amet ullamco culpa ad duis sit officia incididunt magna. Nostrud minim exercitation proident laborum ea proident laborum velit excepteur. Reprehenderit voluptate ipsum labore ullamco labore dolore quis. Enim enim sunt velit esse ea id non. Enim enim ad culpa velit proident commodo reprehenderit pariatur officia velit ad tempor. Incididunt amet et dolore tempor sunt irure. Nostrud duis proident et in cupidatat aute ad Lorem.\r\n"
    },
    {
      "id": "63a2a67be887e8cfddd91a10",
      "tag": ["seasonal", "latest"],
      "index": 37,
      "cost": "\$1,025.68",
      "picture": "https://wallpaperaccess.com/full/441023.jpg",
      "description":
          "Enim in in ex culpa mollit proident culpa consequat minim dolor ad proident. Commodo consequat amet nostrud reprehenderit in cupidatat do velit nulla ullamco nisi laborum ut. Ipsum Lorem non enim magna sunt et sunt. Sunt in aliquip duis elit. Occaecat tempor qui sunt tempor nostrud minim amet culpa eu in.\r\n"
    },
    {
      "id": "63a2a67bbcd19ec5b2147ca5",
      "tag": ["latest", "latest"],
      "index": 38,
      "cost": "\$1,284.61",
      "picture": "https://wallpaperaccess.com/full/669837.jpg",
      "description":
          "Elit enim irure ea proident. Laboris aute consequat id dolore sit eiusmod in. Dolor non sint fugiat aliqua dolore ullamco excepteur incididunt non. Consectetur minim velit nulla qui dolor et. Ex cillum excepteur laborum sint. Veniam ad fugiat esse fugiat qui aute aliquip quis. Ea sunt aliqua reprehenderit duis reprehenderit duis ullamco officia veniam ad consequat.\r\n"
    },
    {
      "id": "63a2a67bfd6635ec32126450",
      "tag": ["brown", "brown"],
      "index": 39,
      "cost": "\$2,367.88",
      "picture": "https://wallpaperaccess.com/full/395795.jpg",
      "description":
          "Adipisicing mollit dolor sint laborum dolore ullamco. Officia et voluptate magna nulla elit incididunt. Magna aute voluptate id ex minim tempor ea anim. Id officia quis amet et Lorem exercitation incididunt aliqua et irure nostrud id. Anim in duis aute amet nostrud amet enim proident dolor. Est nisi exercitation enim do consectetur tempor deserunt. Pariatur aliqua eiusmod irure pariatur magna.\r\n"
    },
    {
      "id": "63a2a67baf374a647a9b1fdf",
      "tag": ["latest", "brown"],
      "index": 40,
      "cost": "\$1,547.69",
      "picture": "https://wallpaperaccess.com/full/483633.jpg",
      "description":
          "Sit laboris ullamco sit aliquip dolore amet dolore aliquip. Occaecat laboris amet velit non. Sint reprehenderit eu ad adipisicing proident enim aliqua consectetur nisi id consequat. Labore aute labore velit eiusmod aliqua velit aliquip velit Lorem dolore ad est exercitation. Enim commodo ea laboris nostrud enim consectetur mollit anim.\r\n"
    },
    {
      "id": "63a2a67b641fab64bd1f1587",
      "tag": ["open", "nature"],
      "index": 41,
      "cost": "\$1,970.95",
      "picture": "https://wallpaperaccess.com/full/545667.jpg",
      "description":
          "Voluptate laborum sit nulla sit velit. Anim mollit ea sit aliquip reprehenderit irure non ex mollit. Pariatur commodo est magna ullamco occaecat ut laboris ipsum irure consectetur labore adipisicing duis. Do anim enim excepteur amet pariatur elit quis in excepteur incididunt irure ut cupidatat. Ea do Lorem sit duis culpa est pariatur veniam exercitation ullamco ea amet do. Exercitation voluptate do incididunt minim elit. Sit minim adipisicing minim labore.\r\n"
    },
    {
      "id": "63a2a67bd83a01cacb0031a9",
      "tag": ["brown", "brown"],
      "index": 42,
      "cost": "\$2,060.96",
      "picture": "https://wallpaperaccess.com/full/829035.jpg",
      "description":
          "Adipisicing eiusmod est eiusmod consectetur Lorem laboris excepteur eiusmod cupidatat culpa. Qui id duis ullamco sit magna quis sint elit dolor. Culpa sint magna veniam velit duis consequat. Non consectetur magna cillum dolore in voluptate aliquip quis ipsum esse consequat est laborum.\r\n"
    },
    {
      "id": "63a2a67ba30273462a037dbc",
      "tag": ["golden", "brown"],
      "index": 43,
      "cost": "\$2,415.43",
      "picture": "https://wallpaperaccess.com/full/921564.jpg",
      "description":
          "Laborum qui culpa duis do aute labore mollit pariatur consectetur exercitation Lorem tempor quis consectetur. Qui exercitation sit tempor esse dolore Lorem qui. Eiusmod eu ea aliquip dolore adipisicing anim ipsum culpa velit pariatur ut non amet nostrud. Velit Lorem id amet velit dolor tempor aliquip proident non culpa. Dolor officia tempor eu anim qui ut aliquip dolore enim ad. Fugiat amet mollit elit enim dolor deserunt Lorem adipisicing cillum quis sit incididunt. Dolore eiusmod incididunt sint do commodo minim velit ut laboris velit.\r\n"
    },
    {
      "id": "63a2a67b932fda94b56add6a",
      "tag": ["latest", "brown"],
      "index": 44,
      "cost": "\$2,513.97",
      "picture": "https://wallpaperaccess.com/full/238631.jpg",
      "description":
          "Minim eiusmod sunt amet est ipsum excepteur. Esse tempor voluptate non nostrud excepteur adipisicing laboris aliqua incididunt. Cupidatat eiusmod sit et enim incididunt mollit culpa. Culpa id ut fugiat proident incididunt ea aute culpa velit velit in cillum culpa in. Cupidatat non minim eu aliqua laborum nisi deserunt dolore laboris ullamco et exercitation veniam. Consectetur amet consequat exercitation eiusmod dolore. Cupidatat magna mollit commodo ea id sit adipisicing magna duis aliqua.\r\n"
    },
    {
      "id": "63a2a67bcb07e317c411d571",
      "tag": ["seasonal", "golden"],
      "index": 45,
      "cost": "\$1,523.98",
      "picture": "https://wallpaperaccess.com/full/762566.jpg",
      "description":
          "Amet nulla dolor non laboris nostrud amet eiusmod ea minim laborum culpa adipisicing. Adipisicing veniam excepteur dolore labore nisi pariatur qui culpa. In quis pariatur qui est sunt. Aliqua nostrud exercitation sint amet ex reprehenderit in ea laborum et minim proident. Commodo reprehenderit aliqua do magna excepteur minim tempor sunt.\r\n"
    },
    {
      "id": "63a2a67be62dde4a4e86feef",
      "tag": ["latest", "nature"],
      "index": 46,
      "cost": "\$3,062.88",
      "picture": "https://wallpaperaccess.com/full/218499.jpg",
      "description":
          "Irure velit culpa nisi ad voluptate nulla. Ad mollit irure sit aliquip tempor do laboris ullamco eiusmod. Reprehenderit deserunt irure dolor mollit. Aute dolore quis elit amet excepteur laborum consequat mollit nisi mollit. Velit consectetur dolor magna exercitation do officia et. Proident dolor voluptate nostrud non ea non cillum aute voluptate quis consectetur. Cupidatat mollit minim et ad voluptate et adipisicing sunt.\r\n"
    }
  ];

  var newMap;
  List<dynamic> names = [];
  double itemHeight = 200;
  List<dynamic> cartItems = [];

  @override
  void initState() {
    newMap = groupBy(flowers, (Map obj) => obj['tag'][1]);
    names = newMap.keys.toList();
    setState(() {});
    super.initState();
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("!"),
      content: Text("This is underdeveloped."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          cartItems.isNotEmpty
              ? Badge(
                  badgeContent: Text('${cartItems.length}'),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CartItems(
                                cartList: cartItems,
                              )));
                    },
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CartItems(
                                cartList: [],
                              )));
                    },
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                showAlertDialog(context);
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: names.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${names[i]}'),
                  SizedBox(
                    height: itemHeight,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int a = 0; a < newMap['${names[i]}'].length; a++)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: itemHeight,
                                  width: 100,
                                  // color: Colors.red,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: SizedBox(
                                              height: 60,
                                              width: 60,
                                              child: FadeInImage(
                                                image: NetworkImage(
                                                    "${newMap['${names[i]}'][a]['picture']}"),
                                                placeholder: AssetImage(
                                                    "assets/images/placeholder.png"),
                                                imageErrorBuilder: (context,
                                                    error, stackTrace) {
                                                  return Image.asset(
                                                      'assets/images/error.png',
                                                      fit: BoxFit.fitWidth);
                                                },
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Text(
                                                  'Cost : ${newMap['${names[i]}'][a]['cost']}')),
                                          // Expanded(
                                          //     flex: 1,
                                          //     child: Text(
                                          //       'Details : ${flowers[i]['description']}',
                                          //       maxLines: 2,
                                          //       overflow: TextOverflow.ellipsis,
                                          //     )),
                                          Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                              onPressed: cartItems.any((product) =>
                                                      product['id'] ==
                                                      '${newMap['${names[i]}'][a]['id']}')
                                                  ? null
                                                  : () {
                                                      cartItems.add({
                                                        'id':
                                                            '${newMap['${names[i]}'][a]['id']}',
                                                        'pic':
                                                            '${newMap['${names[i]}'][a]['picture']}',
                                                        'cost':
                                                            '${newMap['${names[i]}'][a]['cost']}',
                                                        'quantity': 1
                                                      });
                                                      setState(() {});
                                                    },
                                              style: ElevatedButton.styleFrom(
                                                  elevation: 12.0,
                                                  textStyle: const TextStyle(
                                                      color: Colors.white)),
                                              child: const Text('Add to cart'),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
