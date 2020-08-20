# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flashcard.destroy_all
Quest.destroy_all
User.destroy_all

user1 = User.create(email: 'test@test.fr', password: '123456', moods: ["Incompris.e"])


quests = [
  {name: "Savoir dire non", description: "...", moods:["Jaloux.se", "Incompris.e", "Amoureux.se", "Fort.e", "Trahi.e", "Je ne sais pas"], flashcards_nums: [1, 4]},
  {name: "Garder mon calme", description: "...", moods:["Stressé.e", "En colère", "Amoureux.se", "Honteux.se"], flashcards_nums: [2, 3]},
  # {name: "Avoir confiance en moi", description: "...", moods:["Jaloux.se", "Stressé.e", "Seul.e", "Amoureux.se", "Honteux.se"], flashcards_nums: [3, 4,]}
  # {name: "Pouvoir dire 'je t'aime'", description: "...", moods:["Optimiste", "Amoureux.se", "Fort.e", "Honteux.se"]},
  # {name: "Aller vers les autres", description: "...", moods:["Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Honteux.se"]},
  # {name: "Pouvoir faire confiance", description: "...", moods:["Jaloux.se", "En colère", "Seul.e", "Amoureux.se", "Fort.e"]},
  # {name: "Me faire respecter", description: "...", moods:["Incompris.e", "Seul.e", "Amoureux.se", "Honteux.se", "Trahi.e"]},
  # {name: "Prendre de la distance", description: "...", moods:["Stressé.e", "Jaloux.se", "En colère", "Optimiste", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Sûr.e de moi"]},
  # {name: "Lâcher prise", description: "...", moods:["Stressé.e", "Incompris.e", "En colère", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Je ne sais pas"]},
  # {name: "Partager mes émotions", description: "...", moods:["Jaloux.se", "Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Honteux.se", "Trahi.e", "Sûr.e de moi", "Je ne sais pas"]},
  # {name: "Être fier.e de moi", description: "...", moods:["Stressé.e", "Incompris.e", "Seul.e", "Amoureux.se", "Fort.e"]},
  # {name: "Communiquer ma bonne humeur", description: "...", moods:["Optimiste", "Amoureux.se", "Sûr.e de moi", "Fort.e"]},
  # {name: "Gérer les conflits", description: "...", moods:["Jaloux.se", "Incompris.e", "En colère", "Amoureux.se", "Honteux.se", "Trahi.e", "Sûr.e de moi"]}
]



flashcards = [
  {num: 1, question: "Si tu avais l’option d’ajouter une chanson dans la description de ton profil Insta, laquelle ce serait ?", tip: "Ajoute la phrase la plus percutante de la chanson dans ta description."},
  {num: 2, question: "Penses-tu que tu peux être indtimidant.e pour les autres ? Pourquoi ?", tip: "Parfois, la frontière entre l’intimidation et l’inspiration peut-être mince. Tente de déterminer le trait de ta personnalité qui pourrait inspirer les autres."},
  {num: 3, question: "Qu’est-ce que tes chaussures disent de toi?", tip: "Essaie d’associer un adjectif à tes chaussures : originales, colorées, random, de marque, pratiques, élégantes, fun, etc"},
  {num: 4, question: "Qu’est ce qui te fait baisser les yeux quand ton regard croise celui de quelqu’un d’autre ?", tip: "Identifie ce qui t’intimide : la peur du jugement, le désir de connaître l’autre, autre chose."},
  {num: 5, question: "Quelle série pourrais-tu regarder sans t’arrêter ?", tip: "Identifie ce qui t’apporte du réconfort. Essaie de reproduire le sentiment de ce réconfort à d’autres moment de ta vie."},
  {num: 6, question: "Qu’est-ce que tu fais chaque jour et qui te semble vraiment difficile ?", tip: "Prends une grande respiration et remercie-toi pour ta persistance."},
  {num: 7, question: "À qui penses-tu ?", tip: "Fais une liste de tout ce que tu aimerais lui dire. Évalue ce que tu pourrais lui dire maintenant, bientôt, jamais."},
  {num: 8, question: "Quel personnage de film voudrais-tu être ?", tip: "Identifie le trait de caractère qui t’attire le plus. Si c’est un trait de caractère que vous partagez, pense à le montrer plus souvent. Si c’est un trait de caractère qui vous diffère, demande toi pourquoi il t’attire."},
  {num: 9, question: "Termine la phrase : Quand je me regarde dans le miroir, je sais que ...", tip: "Pense à tout ce que tu as déjà accompli."},
  {num: 10, question: "Est-ce que tu pourrais te faire tatouer le nom de quelqu’un.e ? Pourquoi ?", tip: "Renseigne toi sur l’histoire des tatouages. Demande toi si tu te sens proche de cette histoire. Est-ce que cela affecte ton choix ?"},
  {num: 11, question: "Penses-tu être une personne plutôt analytique ou créative ?", tip: "Cette semaine, mets ton analyse ou ta créativité au service de tout ce que tu fais."},
  {num: 12, question: "Qu’est-ce que ta coque de smartphone dit de toi ?", tip: "Personnalise-la si tu as envie."},
  {num: 13, question: "Si on t’offrait un cadeau aujourd’hui, qu’est-ce qui te ferait vraiment plaisir ?", tip: "Identifie ce que le cadeau viendrait combler : un besoin d’attention simple, la reconnaissance d’une de tes compétences, un besoin élémentaire tel que manger ou dormir? Aujourd’hui, ta mission sera de combler ce besoin."},
  {num: 14, question: "Prends un papier et un stylo et dessine une forme qui t’apaise.", tip: "Laisse aller ton imagination !"},
  {num: 15, question: "Quel compliment fais-tu le plus aux autres? Quel compliment devrais-tu te faire à toi même plus souvent ?", tip: "N’oublie pas qu’on est rarement le.a meilleur.e juge de nous-même. Si tu doutes de toi, offre toi le conseil que tu offrirais à un.e ami.e."},
  {num: 16, question: "Quelle est ta matière préférée ? Pourquoi ?", tip: "Persévère dans ce que tu aimes et n’hésite jamais à exprimer ta curiosité."},
  {num: 17, question: "Quelle est la chose que personne ne sait sur toi ? Quels mots utiliserais-tu si tu voulais la partager ?", tip: "Fais un tableau. Identifie les causes et imagine ce qui pourrait être bénéfique à tes relations si tu te confiais davantage."},
  {num: 18, question: "Qu’est-ce que ton profil Instagram dit de toi ?", tip: "Distingue ce qui est l’image que tu veux donner de ce que tu sens vraiment proche de toi. Que veux-tu garder ?"},
  {num: 19, question: "Penses-tu que tout le monde a une mission ? Si oui, quelle est la tienne ?", tip: "Prends un papier et un stylo. Marque la date du jour et écris quelques lignes sur cette mission. Garde le papier dans un endroit sûr."},
  {num: 20, question: "Quel est ton top 5 Netflix ? Pourquoi ?", tip: "Demande à un.e ami.e son top 5 et propose lui le tien. Prévoyez un moment pour échanger dessus."}
  # {question: "Quel est ton super power secret ?", tip: "Rends-le moins secret ;)."},
  # {question: "Qu’est-ce que tu as besoin d’entendre, maintenant ?", tip: "Résume ce besoin en une phrase. Répète-la 5 fois à voix haute."},
  # {question: "Si tu étais un groupe de musique, quel serait ton nom ?", tip: "Crée un groupe de musique. Il peut exister une minute ou toute une vie."},
  # {question: "Admets quelque chose que tu as du mal à admettre.", tip: "Quand tu te sens sur la défensive, répète cet exercice."},
  # {question: "Dans quel domaine es-tu bon.ne pour donner des conseils ?", tip: "Ecris, fais des vidéos ou commence un podcast dans ce domaine."},
  # {question: "Prends un papier, un stylo et écris le nom de l’émotion dont tu aimerais te débarrasser cette année. Ensuite, déchire le papier.", tip: "Mettre un mot sur une émotion et s'en débarasser fictivement est déjà un grand pas vers la guérison !"},
  # {question: "Quelle question a été la plus difficile à répondre pour toi ? Pourquoi ?", tip: "C'est ta question fétiche, garde-la en mémoire et essaie de répéter cet exercice."},
  # {question: "Si tu changeais de prénom demain, que choisirais-tu ?", tip: "Si tu as envie, demande à tes ami.e.s de commencer à t’appeler par ce prénom. Identifie comment cela t’affecte."},
  # {question: "Quelle est ta plus grande peur ?", tip: "Essaie de déterminer dans quelles situations cette peur se manifester."},
  # {question: "Ecris un mot à ton “toi” enfant.", tip: "Qu'est-ce que tu aimerais dire à l'enfant que tu étais pour le rassurer ?"},
  # {question: "Quelle est ta plus grande faiblesse selon toi ?", tip: "Identifie ce que te permet cette faiblesse et ce qu’elle te bloque."},
  # {question: "Est-ce que quelqu’un te manque en ce moment ? Est-ce que tu penses que tu lui manques aussi ?", tip: "Envoie-lui un message ou écris-lui un mot. Imagine que tu lui donnes ce mot ou donne-lui la prochaine fois que vous vous voyez."},
  # {question: "En un mot, décris comment tu te sens en ce moment ?", tip: "Demande-toi le sens profond de ce mot pour toi."},
  # {question: "Réponds à une question que tu n’oserais pas poser à quelqu’un.e en public ?", tip: "Identifie pourquoi elle pourrait être dérangeante."},
  # {question: "Quelle est la plus grande peine non physique que tu aies vécue ?", tip: "Va vers ce qui t’apporte du réconfort et identifie en quoi tu en es sorti grandi.e."},
  # {question: "Si tu avais la possibilité de vraiment connaître quelqu’un.e, qui ce serait ? Pourquoi ?", tip: "Si cette personne t’est accessible, tu peux lui partager ton envie de mieux la connaître. Autrement, détermine les traits de caractères qui t’attire chez elle."},
  # {question: "Quel est le nom de ta mère ? Qu’elle est la chose la plus belle que tu penses à propos d’elle ?", tip: "Écris à ta mère pourquoi tu lui aies reconnaissant.e. Tu peux lui donner le mot, ou pas."},
  # {question: "Qu’est-ce que tu essaies toujours de te prouver à toi-même ?", tip: "Penses-tu que ça en vaut la peine ?"},
  # {question: "Comment peux-tu devenir une meilleure version de toi-même ?", tip: "Et si tu étais déjà la meilleure version de toi-même..."},
  # {question: "Qu’est-ce que toi plus jeune ne pourrait pas croire à propos de ta vie actuelle ?", tip: "Si ça te fait rire, ris. Pose la même question à un.e ami.e."},
  # {question: "As-tu déjà dit à quelqu’un “je t’aime” sans le penser vraiment ? Si oui, pourquoi ?", tip: "Identifie ce que “je t’aime” veut dire pour toi. Tu peux faire une liste."},
  # {question: "Complète la phrase : 'Les autres me décriraient comme ... Je suis le seul à savoir que je suis ...'", tip: "'Nous gardons tous un jardin secret, mélange de rêve et de réalité.', Denis Labayle."},
  # {question: "Comment te sens-tu RÉELLEMENT ?", tip: "Prends une grande respiration. Réalise la force que tu as de formuler tes émotions."},
  # {question: "Quand on te demande comment tu vas, combien de fois réponds-tu sincèrement ce que tu ressens ?", tip: "La prochaine fois que tu ne réponds pas sincèrement, demande-toi pourquoi. Est-ce que la personne en face te pose la question au mauvais moment ? Est-ce que tu as peur de dire la vérité ? Est-ce que tu ne le/la connais pas assez ?"},
  # {question: "Quelle est la chose la plus inexplicable qui te soit arrivée ?", tip: "Raconte-toi cette histoire. N’essaie pas de la comprendre. Fais-en un livre, une chanson, un dessin ou un jeu."},
  # {question: "Quel titre donnerais-tu à ce chapitre de ta vie ?", tip: "Si tu aimes ce titre, garde-le en tête. Si tu ne l’aimes pas, change-le et tente de t’en rapprocher le plus au quotidien."},
  # {question: "Y a-t-il un sentiment qui te manque ?", tip: "Identifie ce qui pourrait combler ce manque. Est-ce accessible ? Comment ?"},
  # {question: "Quelle est la chose que tu ne voudrais pas changer chez toi ?", tip: "Prends une grande respiration et ressens pleinement cette fierté."},
  # {question: "Appuie sur “lecture aléatoire” dans ta bibliothèque de musiques et écoute la première chanson qui se lance.", tip: "Quels sentiments et souvenirs t’évoque-t-elle ?"},
  # {question: "Est-ce qu’un.e inconnu.e a déjà changé ta vie ?", tip: "Toi aussi, tu peux être cet.te inconnu.e. Savais-tu que sourire à un.e inconnu.e peut augmenter l'espérance de vie ?"},
  # {question: "A quelle question essaies-tu le plus de répondre en ce moment ?", tip: "Mets cette question de côté. Tu y répondras quand tu t’y attendras le moins."},
  # {question: "Quel est ton souvenir le plus joyeux de l’année écoulée ?", tip: "N’hésite pas à prendre du temps pour te remémorer et t’imprégner de ce souvenir."},
  # {question: "Regarde la dernière photo présente sur ta pellicule.", tip: "D’après toi, que raconte-t-elle ?"},
  # {question: "Quand je te dis : “souvenir de bonheur”, quel est le premier qui te vient à l’esprit ?", tip: "Identifie les sentiments qui t’habitaient le plus à ce moment-là."},
  # {question: "Qu’est-ce que tu désires le plus ?", tip: "Ne néglige pas ce désir. Maintiens-le comme un cap dans ce tout ce que tu fais."},
  # {question: "De quoi as-tu le plus besoin ?", tip: "N’hésite pas à formuler tes besoins à tes proches."},
  # {question: "Quel compliment aimerais-tu recevoir plus fréquemment ?", tip: "Formule-le toi à toi même. Tu le mérites."},
  # {question: "Quel est le meilleur compliment qu’un.e inconnu.e t’ait fait ?", tip: "Demande-toi ce qui t’a plu : le compliment en lui-même ou le fait qu’un.e inconnu.e te l’adresse."},
  # {question: "Dessine ton humeur du moment.", tip: "Tout le monde peut être créatif !"},
  # {question: "As-tu changé d’avis à propos de quelque chose récemment ?", tip: "Tu as le droit de changer d’avis autant que tu le sens nécessaire ;)."},
  # {question: "Décris ta journée parfaite.", tip: "Essaie de planifier, pour les prochains jours, des événements qui te permettraient de vivre cette journée parfaite."},
  # {question: "Si tu pouvais choisir : avec qui serais-tu ? Où serais-tu ? Et que ferais-tu ?", tip: "Que manque-t-il pour que ce soit possible ? Utilise ce manque pour formuler davantage ce dont tu as besoin"},
  # {question: "Quand t’es-tu surpris.e toi-même pour la dernière fois ?", tip: "Accepte de te surprendre toi-même :)."},
  # {question: "Comment décrirais-tu le sentiment d’être amoureux.se en un mot ?", tip: "Identifie pourquoi tu as choisi ce mot précis."},
  # {question: "Ecris les 3 choses les plus importantes selon toi dans la vie.", tip: "Garde-les comme des guides. Personne n’a le droit de t’y faire renoncer."},
  # {question: "Quel est le nom de ton père ? Dis-moi quelque chose à propos de lui.", tip: "Écris à ton père pourquoi tu lui aies reconnaissant.e. Ce mot peut rester un secret. Ou pas."},
  # {question: "De quoi as-tu le plus peur : le succès ou l’échec ? Pourquoi ?", tip: "Qu’appelles-tu succès ? Qu’appelles-tu échec ?"},
  # {question: "Est-ce que tu te mens à toi-même à propos de quelque chose ?", tip: "Identifie pourquoi ce mensonge. En vaut-il la peine ?"},
  # {question: "Les flashcards sont une forme d’art, crée ta propre flashcard.", tip: "Envoie-la nous ;)."},
  # {question: "Quelle leçon as été la plus longue à apprendre pour toi ?", tip: "Si elle a été longue pour toi, elle l’est sans doute pour d’autres. Partage-la."},
  # {question: "Pense à quelque chose que tu détestes et que la plupart des gens aiment.", tip: "Identifie ce que cette différence te fait ressentir. Tu n’as pas à te conformer au goût des autres."},
  # {question: "Quelle partie de ta vie te fait du bien ? Quelle partie de vie te fait mal ?", tip: "Essaie de déterminer ce dont tu aurais besoin pour maintenir un équilibre constructif entre ces différentes parties."},
  # {question: "Quels sont les prénoms de tes premiers amours ? Quelle sont les raisons pour lesquelles tu es tombé amoureux.se d'eux.elles ?", tip: "Ne te juge pas, prends de la hauteur."},
  # {question: "Si tu pouvais échanger ta vie avec quelqu’un.e, qui ce serait ? Pourquoi ?", tip: "Prends une grande respiration et réfléchis-y une seconde fois. Penses-tu tout connaître de sa vie ? Qu’est-ce que tu laisserais de la tienne qui te manquerait ?"},
  # {question: "Si c'est le cas, à quel moment as-tu réalisé que tu n’étais pas invincible ?", tip: "Personne n’est invincible. La vulnérabilité est la nouvelle authenticité."},
  # {question: "Est-ce que tu penses que l’image que tu as de toi correspond à l’image que les autres ont de toi ?", tip: "Quelle facette de toi aimerais-tu montrer plus aux autres ?"},
  # {question: "Quel est le rêve auquel tu as renoncé ?", tip: "Identifie les raisons pour lesquelles tu y as renoncé. En valent-elles la peine ?"},
  # {question: "Appelle quelqu’un que tu admires et dis-lui pourquoi tu l’apprécies.", tip: "Tu as fait ta BA de la journée !"},
  ]

puts "Creating quests"

quests.each do |quest|
  puts "Creating quest #{quest[:name]}"
  flashcards_nums = quest[:flashcards_nums]
  quest.delete(:flashcards_nums)
  new_quest = Quest.create!(quest)
  flashcards_nums.each do |flashcard_num|
    puts "Creating flashcard #{flashcard_num}"
    attributes = flashcards.select { |flashcard| flashcard[:num] == flashcard_num }.first
    attributes.delete(:num)
    attributes[:quest] = new_quest
    Flashcard.create!(attributes)
  end
end

puts "done"



