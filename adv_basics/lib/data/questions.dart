import 'package:adv_basics/models/quiz_question.dart';

const questions = [
   QuizQuestions(
     'Quais são os principais blocos de construção das UIs do Flutter?',
     [
       'Widgets',
       'Componentes',
       'Blocos',
       'Funções',
     ],
   ),
   QuizQuestions('Como as UIs do Flutter são construídas?', [
     'Combinando widgets no código',
     'Combinando widgets em um editor visual',
     'Ao definir widgets em arquivos de configuração',
     'Usando XCode para iOS e Android Studio para Android',
   ]),
   QuizQuestions(
     'Qual é a finalidade de um StatefulWidget?',
     [
       'Atualizar interface do usuário conforme alterações de dados',
       'Atualizar dados à medida que a interface do usuário muda',
       'Ignorar alterações de dados',
       'Renderizar UI que não depende de dados',
     ],
   ),
   QuizQuestions(
     'Qual widget você deve tentar usar com mais frequência: StatelessWidget ou StatefulWidget?',
     [
       'StatelessWidget',
       'StatefulWidget',
       'Ambos são igualmente bons',
       'Nenhuma das acima',
     ],
   ),
   QuizQuestions(
     'O que acontece se você alterar dados em um StatelessWidget?',
     [
       'A IU não está atualizada',
       'A IU foi atualizada',
       'O StatefulWidget mais próximo é atualizado',
       'Todos os StatefulWidgets aninhados são atualizados',
     ],
   ),
   QuizQuestions(
     'Como você deve atualizar os dados dentro do StatefulWidgets?',
     [
       'Chamando setState()',
       'Chamando updateData()',
       'Chamando updateUI()',
       'Chamando updateState()',
     ],
   ),
];