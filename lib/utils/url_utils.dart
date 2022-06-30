import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;


class URLUtils{

Future<http.Response> fetchPost() async {
  final url = Uri.parse('https://www.edu.xunta.gal/oposicions/ProcesaConsultaPublica.do');
  final response = await http.post(
    url,
    headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here",
      'Content-Type': 'application/json; charset=UTF-8',
      'POST': '/oposicions/ProcesaConsultaPublica.do HTTP/1.1:',
      'Accept':'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
      'Accept-Encoding':'gzip, deflate, br',
      'Accept-Language':'es-ES,es;q=0.9,en;q=0.8,gl;q=0.7',
      'Cache-Control':'max-age=0',
      'Connection':'keep-alive',
      'Content-Length':'286',
      'Content-Type':'application/x-www-form-urlencoded',
      'Cookie':'JSESSIONID=732D8470AFE003FC49A8E3B1B3D95321.server_prod-j2ee18; _ga=GA1.2.530861570.1654075497; MOODLEID1_=%250D2%25A3%25E0L%25BCDYw%25EBu%259E%258D%2580%250ES%25ADS%25CF%2528%253F%2514K%2581%253E%25EE; SESS8aef3d9757f2d711e44d875119c00368=fulompdsmje2hfaojmqffb8l5bhtqbfm; _gid=GA1.2.461199111.1656320759; SESS44330a48fa8e5643bdd3d3aac212e7d8=hbs7186lcm7ve02edih807mgn7; has_js=1; SESS211cffe6260bdb1ad057973d3b3b22d9=9bv4t3g786jtildkd80rl0n8l9; BALANCEID=.server_prod-j2ee23',
      'Host':'www.edu.xunta.gal',
      'Origin':'https://www.edu.xunta.gal',
      'Referer':'https://www.edu.xunta.gal/oposicions/ProcesaConsultaPublica.do',
      'Sec-Fetch-Dest':'document',
      'Sec-Fetch-Mode':'navigate',
      'Sec-Fetch-Site':'same-origin',
      'Sec-Fetch-User':'?1',
      'Upgrade-Insecure-Requests':'1',
      'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36',
      'sec-ch-ua':'" Not A;Brand";v="99", "Chromium";v="102", "Google Chrome";v="102"',
      'sec-ch-ua-mobile':'?0',
      'sec-ch-ua-platform':'"Windows"',
    },
    body: "accion=&consulta=si&inscripcion=&cod_documento=&quenda=&ligazon=&data_publicacion=&espcodxun=590107&verBaremoProvTribunal=N&verBaremoDefTribunal=N&verBaremoProvEspecialidade=N&verBaremoDefEspecialidade=N&convocatoria=31%2F01%2F2022S&cod_corpo=590&cod_especialidade=107&cod_tribunal=3924",
  );
  return response;

}

/*class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}*/


}