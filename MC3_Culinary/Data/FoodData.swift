//
//  FoodData.swift
//  MC3_Culinary
//
//  Created by Randy Noel on 22/08/19.
//  Copyright © 2019 Leonnardo Benjamin Hutama. All rights reserved.
//

import Foundation

let lebakFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Leumung", images: ["leumeung"], fact: "Leumung dapat juga ditemukan di Sumatra Barat. Leumung di Sumatra Barat dengan Leumung di Banten memiliki rasa yang sama, hanya berbeda pada bahan yang digunakan. Leumung di Sumatra Barat memakai kacang merah sebagai bahannya. Warga Banten biasanya memakai telor asin sebagai pendamping Leumung dan disajikan  dalam keadaan hangat agar terasa lebih nikmat", ingredient: "Beras ketan dan bumbu santan kelapa", method: "Cara membuatnya dengan cara memasukkan bahan-bahan ke dalam bilah-bilah bambu lalu dibakar pada perapian hingga matang.", origin: bantenCities[0]),
    TraditionalFoodModel(name: "Kue Jojorong", images: ["kue jojorong"], fact: "Dari tanah Pasundan.", ingredient: "Menggunakan Tepung sanji, tepung beras, dan gula merah", method: "Kue Jojorong ini dibuat dengan cara dikukus dan juga dibungkus dengan daun pisang. Kue Jojorong dapat dimakan menggunakan sendok dan langsung dari daun pisang.", origin: bantenCities[0]),
//    TraditionalFoodModel(name: "Opak", images: ["opak"], fact: "Ada di desa Pagelaran, kecamatan Malingping,0\ kabupaten Lebak. Teksturnya kering dan renyah. Biasanya ada pada acara-acara bahagia di daerah Banten.", ingredient: "Beras ketan, telur, kelapa parut", method: "Bikinnya ditumbuk, dijemur lalu dipanggang diatas bara api. Makannya biasa sama nasi", origin: bantenCities[0])
//
]

let pandeglangFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Kue Apem", images: ["kue apem"], fact: "Salah satu kuliner favorit sultan Banten dan  biasanya kue Apem tersaji pada acara khaul sultan.", ingredient: "tepung beras, gula merah, daun pandan, santan", method: "Kue Apem dibuat dengan cara dikukus. Kue Apem dapat dimakan langsung, namun biasanya warga Banten menambahkan gula merah atau kinca. Kue Apem juga dapat ditambahkan madu atau sirup jika tidak menyukai gula.", origin: bantenCities[1]),
    TraditionalFoodModel(name: "Emping Melinjo", images: ["emping melinjo"], fact: "Emping Melinjo dapat disebut juga kerupuk melinjo dan keceprek.", ingredient: "Biji Melinjo", method: "Kue Melinjo dapat dibuat dengan cara disangrai, lalu digeprek dan dijemur melinjonya. Setelah itu emping digoreng hingga matang.", origin: bantenCities[1]),
    TraditionalFoodModel(name: "Balok Menes", images: ["balok menes"], fact: "Diluar Banten, orang menyebut Balok Menes dengan sebutan getuk. Balok Menes mempunyai cita rasa serta aroma yang sangat khas.", ingredient: "singkong dan serundeng kelapa", method: "Balok Menes dibuat dengan cara  singkong ditumbuk, ditipiskan, dicetak. Bagian tengah singkong dipoles minyak bawang dan ditambah bawang goreng. Balok Menes dapat dimakan dengan ditambahkan serundeng.", origin: bantenCities[1])
]

let serangFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Lepet/Lepat", images: ["lepet"], fact: "Mirip nasi, bedanya beras ketan pake kelapa dibalut daun kelapa muda. Bikinnya ga segampang itu, mesti ahli lilit rapinya. Rasanya gurih karena kelapa, teksturnya empuk.", ingredient: "beras ketan dan kelapa dibalut dengan daun kelapa muda", method: "Bikinnya di kukus. Makannya ada yang langsung ada juga yang digoreng.", origin: bantenCities[2]),
    TraditionalFoodModel(name: "Rabeg", images: ["rabeg"], fact: "Rabeg adalah kuliner khas Indonesia hasil adaptasi dari kuliner Arab. Orang Serang yang keturunan Jawa menyebutnya dengan sebutan Wedhus. Rabeg memiliki rasa pedas bercampur manis. Secara sekilas Rabeg mirip Semur Campur Tongseng,  tapi yang membedakan dengan Semur Campur Tongseng adalah didalam Rabeg terdapat jahe, lada dan cabai merah.", ingredient: "daging, jeroan kambing, rempah-rempah", method: "Cara membuat Rabeg dengan cara ditumis hingga meresap. Rabeg dapat dinikmati saat hangat.", origin: bantenCities[2]),
    TraditionalFoodModel(name: "Sate Bandeng", images: ["sate bandeng"], fact: "Pertama kali Sate Bandeng diperkenalkan oleh juru masak kerajaan Banten Girang pada abad ke 16. Sate Bandeng dapat menjadi solusi bagi yang ingin memakan bandeng tanpa tulang.", ingredient: "Ikan bandeng, asam jawa, daun pisang sebagai pembungkus, bambu sebagai penjepit, rempah-rempah", method: "Cara membuat Sate Bandeng dengan meremas ikan Bandeng hingga terpisah dari kulitnya. Kemudian dicampur dengan bumbu dan santan kental. Ditusuk lalu dibakar", origin: bantenCities[2]),
    TraditionalFoodModel(name: "Nasi Sumsum", images: ["nasi sumsum"], fact: "Pertama kali Nasi Sumsum hadir pada tahun 1941 oleh seorang tukang potong hewan yang bekerja di Serang yang membawa pulang sisa-sisa tulang untuk diolah jadi makanan. Di tangan istri, sumsum tulang tersebut dicampurkan ke dalam nasi.", ingredient: "sumsum tulang sapi, gula jawa, beras, daun pisang, batang lidi, rempah-rempah (cabai merah besar, kemiri, bawang putih, bawang merah)", method: "Cara membuat Nasi Sumsum adalah bumbu ditumis dicampur dengan nasi, lalu dimasukkan ke daun pisang akhirnya dibakar. Penyajiannya baru dibakar saat mau dimakan.", origin: bantenCities[2]),
    TraditionalFoodModel(name: "Sambel Burog", images: ["sambel burog"], fact: "Sambel Burog biasanya menjadi oleh-oleh untuk para jemaah sepulang menghadiri pengajian.", ingredient: "kulit melinjo (kulit tangkil)", method: "Cara membuat Sambel Burog adalah kulit melinjo ditumis hingga harum. Sambel Burog dapat menemani nasi saat makan.", origin: bantenCities[2]),
    TraditionalFoodModel(name: "Ketan Bintul", images: ["ketan bintul"], fact: "Sebagai salah satu makanan berbuka puasa karena olahan ketan dapat mengisi perut/mengenyangkan. Ketan Bintul konon menjadi kesukaan para sultan Banten di kota Serang dan sekitarnya. Kuliner satu ini termasuk makanan yang mudah dibuat.", ingredient: "ketan, kacang tolo, santan kental, daun pisang, kelapa setengah tua parut", method: "Bikinnya, ketan direbus lalu dikukus, kemudian ditumbuk dan dicetak diatas daun pisang. Penyajiannya,dipotong bulat/kotak dan ditaburi serundeng.", origin: bantenCities[2])
]

let tangerangFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Laksa Tangerang", images: ["laksa tangerang"], fact: "Warisan kuliner yang masih mudah ditemukan di sekitaran kota Tangerang. Yang membedakan dengan laksa lain adalah, isinya mie putih dengan ukuran yang agak besar dan disirim pakai kuah sayur. ketika disantap, akan terasa serpihan-serpihan kasar yang disebabkan oleh keberadaan taburan kelapa parut di dalam kuannya.", ingredient: "mie, kacang hijau, suwiran/potongan ayam, taburan daun kucai.", method: "Bikinnya, ayam direbus beserta bumbu. Kemudian tumis bumbu yang tersisa sebagai kuahnya. Penyajiannya, mi dan ayam bakar disiram dengan kuah panas ketika ingin dimakan.", origin: bantenCities[3])
    //Baru sampai di Laksa
]

let jakartaFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Kerak Telor", images: ["kerak telor"], fact: "Makanan khas betawi sebagai ikon kuliner Jakarta. Rasa kerak telor yang gurih dengan tekstur beras ketan yang legit akan membuat betah berlama-lama untuk mengunyah.", ingredient: "beras ketan, telur ayam/bebek, ebi kering, bawang goreng, serundeng, jahe, merica, kencur, cabe merah.", method: "Bikinnya dibakar dengan arang pada kuali kecil. Penyajiannya, ditaburi bawang goreng dengan serundeng.", origin: DKIJakartaCities[0]),
    TraditionalFoodModel(name: "Kue Rangi", images: ["kue rangi"], fact: "kue rangi atau sagu rangi biasanya mengnganggap kue rangi dan kue pancong sama, padahal berbeda dari segi tekstur, rasa dan bahan yang digunakan. Saat dimakan, lidah akan menangkap rasa gurih dengan potongan kelapa yang besar dan sedikit manis dari gula merahnya.", ingredient: "tepung sagu, kelapa tua, gula merah", method: "Bikinnya dipanggang dalam cetakan khusus", origin: DKIJakartaCities[0]),
    TraditionalFoodModel(name: "Toge Goreng", images: ["tauge goreng"], fact: "Biasanya makanan ini dapat ditemukan di pinggiran jalan atau saat festival-festival tertentu. Bagi masyarakat Betawi, ini sesuatu yang tidak boleh dilewatkan apabila ditemukan. Jadi tak perlu heran kalau selalu ramai dan juga harganya yang murah. Cita rasa yang dimiliki toge goreng adalah asam manis dari tauco dan oncomnya.", ingredient: "mie kuning, toge, daun kucai, tauco, dan oncom.", method: "Bikinnya digoreng dengan air.", origin: DKIJakartaCities[0]),
    TraditionalFoodModel(name: "Gabus Pucung", images: ["gabus pucung"], fact: "Nama gabus pucung sendiri merupakan gabungan dari bahan utama pembuatannya, yakni ikan gabus dan buah pucung. Buah pucung sendiri banyak tumbuh di daerah jakarta tempo dulu. Selain itu, makanan ini mempunyai nilai tradisi yaitu dijadikan hantaran atau makanan yang diantar oleh anak kepada orang tua atau dari menantu kepada mertua saat menjelang bulan puasa dan lebaran dengan tujuan mempererat tali silaturahmi. ", ingredient: "ikan gabus, buah pucung (kluwek/keluak), dan bumbu rempah.", method: "Bikinnya ikan gabus digoreng lalu disiramkan dengan kuah bumbu olahan.", origin: DKIJakartaCities[0])
    //Baru sampai di Gabus Pancung
]

let bandungFoods : [TraditionalFoodModel] = [
    TraditionalFoodModel(name: "Mie Kocok", images: ["mie kocok"], fact: "Menurut cerita, kata kocok berasal dari dikocoknya mie dan tauge pada air panas, sehingga nantinya akan membuatnya layu dan siap disajikan. Namun kini proses pengocokan tersebut tidaklah dipakai oleh pembuat mie kocok di seluruh Indonesia. Popularitas masakan ini juga tidak diragukan lagi dengan hampir adanya di seluruh Indonesia.", ingredient: "mie telur, kikil sapi, taoge, dan rempah-rempah.", method: "Bikinnya dengan cara ditumis bumbunya dan diaduk bersama air rebusan sapi. Penyajiannya mie yang baru direbus akan disiram dengan kuah kikil sapi. Makannya dapat ditambahkan daun bawang, bawang goreng ataupun kecap manis sesuai dengan selera", origin: jawaBaratCities[0])
]

let allFoods:[[TraditionalFoodModel]] = [lebakFoods,pandeglangFoods,serangFoods,tangerangFoods,jakartaFoods,bandungFoods]

