class Strings {
  static const welcomeTxt = 'Olá, meu nome é';
  static const name = 'Matheus da Silva Santos.'; 
  static const whatIdo =
      'Eu amo construir coisas para a internet, tanto Mobile quanto Web.'; 
  static const introAbout =
      'Eu sou um analista desenvolvedor sênior especializado em planejar e construir experiências digitais incríveis. Atualmente como consultor, estou focado em construir produtos acessíveis, modernos e extremamente performáticos na ';
  static const currentOrgName = 'AGILTUR.'; 

  /* About screen contents */
  static const aboutPara1 =
      'Olá! Eu sou o Matheus e gosto de criar coisas pra internet. Meu interesse por desenvolvimento mobile/web começou lá em 2013, quando eu  tive curiosidade pra saber como coisas incríveis como os jogos e sites que eu gostava eram construídos — minha paixão virou profissão.';
  static const aboutPara2 =
      'Pra encurtar a história, eu tive o privilégio de trabalhar para ótimas empresas com perfis distintos entre fábricas de software, voltada pra soluções, startups, grandes corporações, etc. Sempre numa atmosfera de trabalho com aprendizado. Meu foco principal atualmente é construir aplicações acessíveis, performáticas e experiências digitais focadas no usuário final para a maior variedade de clientes possível.';
  static const aboutPara3 =
      'Ah, ocasionalmente eu também faço freelancers ou presto serviço de consultoria para vários clientes, tanto da minha cidade quanto do Brasil. Se você tem alguma ideia sobre desenvolver um projeto ou criar um app, fique a vontade para entrar em contato!';

  static const techIntro =
      'Aqui algumas tecnologias com que tenho trabalhado nos últimos anos:';

  static const endTxt =
      'Embora eu esteja empregado atualmente, sempre estou aberto a novas oportunidades e minha caixa de entrada e meu whatsapp estão sempre abertos. Se você possuir quaisquer dúvidas ou apenas quiser dizer um oi, vou tentar meu melhor para te responder o mais depressa possível!';

  static const techs = [
    ' C# / .NET',
    ' Dart / Flutter',
    ' PHP / Lavarel',
    ' SQL Server / Postgres / MongoDB',
    ' Docker / Kubernetes',
    ' HTML5, CSS3 e Javascript',
    ' AWS / Azure / Firebase',
    ' CI/CD e GIT',
    ' SCRUM / KANBAN',
    ' MVC / REST API / SOAP',
  ];

  static final works = [
    Work(
      company: 'Grupo LTM',
      designation: 'Programador Júnior',
      duration: 'Abr 2015 - Set 2017',
      about: [
        'Para começar minha carreira na TI, me juntei a uma equipe incrível de Brasília para ganhar experiência na indústria e entregar projetos gigantescos.',
        'Aprendi e explorei arquiteturas MVC em .NET, confeccionava e apresentava relatórios em Excel extraídos de bases de dados SQL e atuava como dev frontend, majoritariamente.',
        'Trabalhei em muitos projetos de diferentes plataformas, como landing pages de campanhas da CAIXA, Sistemas de troca de pontos por produtos, E-commerce, ERP, aplicações CMS e aplicativos mobile.',
      ],
    ),
    Work(company: 'DF Imóveis',
      designation: 'Programador Pleno',
      duration: 'Out 2017 - Jan 2018',
      about: [
        'Uma empresa do ramo imobiliário, com um único produto focado em conectar pessoas a imóveis.',
        'Foi uma experiência breve, mas que agregou muito à minha carreira. Tive a oportunidade de ser confrontado com mais responsabilidades e pude subir de nível como proffissional aqui.',
        'Trabalhei com uma equipe de 3 desenvolvedores, focado num produto web de arquitetura muito complexa e com muitos usuários.',
      ],
    ),
    Work(
      company: 'Promitech',
      designation: 'Tech Lead',
      duration: 'Jan 2019 - Mai 2021',
      about: [
        'Comecei como programador pleno, mas logo fui convidado ao desafico de atuar como Líder Técnico de uma equipe de 5 desenvolvedores, entregando projetos de Licitações do Governo, Aplicativos Mobile dentro e fora do país e um produto próprio da empresa.',
        'Desenvolvi muitas soluções web como Landing Pages, ERP\'s, aplicativos de delivery e de controle de ponto do trabalhador.',
        'Adquiri muita experiência com tecnologias como Dart/Flutter, Firebase, MongoDB, arquitetura de microsserviços, PHP/Laravel, CI/CD, DDD e Clean Architeture',
      ],
    ),
    Work(
      company: 'NTT Data',
      designation: 'Consultor / Analista Desenvolvedor Sênior',
      duration: 'Mai 2021 - Mar 2023',
      about: [
        'Grupo de Empresas que adquiriu a Everis, prestando serviço aos maiores bancos da América Latina.',
        'Trabalhei com uma equipe multidisciplinar de engenheiros, Tech Leads, PO\'s, PM\'s e muitos desenvolvedores sêniores para evoluir a operação do Banco Itaú.',
        'Num ambiente de metodologia ágil, lidei com a nuvem da AWS, python, kotlin, C#, microsserviços, SQL Server, DDD e TDD, CI/CD, muita criptografia e refatoração de rotinas antigas para tecnologias mais atuais e mais performáticas.',
      ],
    ),
    Work(
      company: 'SKY Fibra Brasil',
      designation: 'Consultor / Analista Desenvolvedor Sênior',
      duration: 'Jun 2023 - Outubro 2023',
      about: [
        'Uma das maiores empresas de telecomunicações do Brasil.',
        'Trabalhei com um time de 3 engenheiros de software para migrar toda a operação LTE para Fibra, enquanto prestava suporte e dava manutenção evolutiva ao backoffice da empresa.',
        'Usando o bom e velho ASP NET raiz, SQL Server e HTML5.',
      ],
    ),
    Work(
      company: 'AGILTUR',
      designation: 'CTO / Tech Lead',
      duration: 'Jun 2024 - Presente',
      about: [
        'Uma empresa familiar de consultoria e desenvolvimento de software, focada em soluções para o setor de turismo.',
        'Além de ser sócio, atuo como Líder técnico criando aplicativos móveis para clientes do Brasil e do exterior.',
        'Trabalho com tecnologias como Flutter, PHP, Firebase, CI/CD e metodologias ágeis.',
      ],
    ),
  ];
}

class Work {
  final String company;
  final String designation;
  final String duration;
  final List<String> about;

  Work({
    required this.company,
    required this.designation,
    required this.duration,
    required this.about,
  });
}
