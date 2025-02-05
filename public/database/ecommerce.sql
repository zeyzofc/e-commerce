--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id_category integer NOT NULL,
    nama_category text NOT NULL,
    gambar text
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_category_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_category_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.category_id_category_seq OWNER TO postgres;

--
-- Name: category_id_category_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_category_seq OWNED BY public.category.id_category;


--
-- Name: cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    province_id integer NOT NULL,
    city_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.cities OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cities_id_seq OWNER TO postgres;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: detail_pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detail_pesanan (
    id_detail integer NOT NULL,
    id_user integer NOT NULL,
    kd_product character(7),
    pengiriman text
);


ALTER TABLE public.detail_pesanan OWNER TO postgres;

--
-- Name: detail_pesanan_id_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detail_pesanan_id_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detail_pesanan_id_pesanan_seq OWNER TO postgres;

--
-- Name: detail_pesanan_id_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detail_pesanan_id_pesanan_seq OWNED BY public.detail_pesanan.id_detail;


--
-- Name: iklan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.iklan (
    id_iklan integer NOT NULL,
    nama_iklan text NOT NULL,
    gambar text NOT NULL
);


ALTER TABLE public.iklan OWNER TO postgres;

--
-- Name: iklan_id_iklan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.iklan_id_iklan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.iklan_id_iklan_seq OWNER TO postgres;

--
-- Name: iklan_id_iklan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.iklan_id_iklan_seq OWNED BY public.iklan.id_iklan;


--
-- Name: pesanan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesanan (
    id_pesanan integer NOT NULL,
    id_user integer NOT NULL,
    kd_product character(7) NOT NULL,
    qty_pesanan integer NOT NULL,
    warna text,
    status text
);


ALTER TABLE public.pesanan OWNER TO postgres;

--
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pesanan_id_pesanan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pesanan_id_pesanan_seq OWNER TO postgres;

--
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pesanan_id_pesanan_seq OWNED BY public.pesanan.id_pesanan;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    kd_product character(7) NOT NULL,
    id_category integer NOT NULL,
    nama_product character varying(180) NOT NULL,
    qty_product integer NOT NULL,
    deskripsi text,
    berat_product integer NOT NULL,
    warna text,
    harga integer NOT NULL,
    gambar character varying(255),
    ukuran_product character varying
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id bigint NOT NULL,
    province_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinces_id_seq OWNER TO postgres;

--
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id_user integer NOT NULL,
    nama text NOT NULL,
    email text NOT NULL,
    no_telepon text,
    alamat text,
    password character varying(100) NOT NULL,
    role character varying
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_user_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_user_seq OWNER TO postgres;

--
-- Name: users_id_user_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_user_seq OWNED BY public.users.id_user;


--
-- Name: category id_category; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id_category SET DEFAULT nextval('public.category_id_category_seq'::regclass);


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: detail_pesanan id_detail; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_pesanan ALTER COLUMN id_detail SET DEFAULT nextval('public.detail_pesanan_id_pesanan_seq'::regclass);


--
-- Name: iklan id_iklan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.iklan ALTER COLUMN id_iklan SET DEFAULT nextval('public.iklan_id_iklan_seq'::regclass);


--
-- Name: pesanan id_pesanan; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan ALTER COLUMN id_pesanan SET DEFAULT nextval('public.pesanan_id_pesanan_seq'::regclass);


--
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- Name: users id_user; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id_user SET DEFAULT nextval('public.users_id_user_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id_category, nama_category, gambar) FROM stdin;
16	Komputer	6549c21b316cf-laptop.svg
15	T-shirts	6549c226bd5b9-t-shirt.svg
20	Sport	6549c235bf1c2-sport.svg
17	Shoes	6549c24ca4e40-shoes.svg
21	Dress	6549c25abed29-dress.svg
22	Book	6549c28954403-book.svg
23	Accessories	6549c296a7daa-eyeglass.svg
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cities (id, province_id, city_id, name) FROM stdin;
122	1	17	Badung
123	1	32	Bangli
124	1	94	Buleleng
125	1	114	Denpasar
126	1	128	Gianyar
127	1	161	Jembrana
128	1	170	Karangasem
129	1	197	Klungkung
130	1	447	Tabanan
131	2	27	Bangka
132	2	28	Bangka Barat
133	2	29	Bangka Selatan
134	2	30	Bangka Tengah
135	2	56	Belitung
136	2	57	Belitung Timur
137	2	334	Pangkal Pinang
138	3	106	Cilegon
139	3	232	Lebak
140	3	331	Pandeglang
141	3	402	Serang
142	3	403	Serang
143	3	455	Tangerang
144	3	456	Tangerang
145	3	457	Tangerang Selatan
146	4	62	Bengkulu
147	4	63	Bengkulu Selatan
148	4	64	Bengkulu Tengah
149	4	65	Bengkulu Utara
150	4	175	Kaur
151	4	183	Kepahiang
152	4	233	Lebong
153	4	294	Muko Muko
154	4	379	Rejang Lebong
155	4	397	Seluma
156	5	39	Bantul
157	5	135	Gunung Kidul
158	5	210	Kulon Progo
159	5	419	Sleman
160	5	501	Yogyakarta
161	6	151	Jakarta Barat
162	6	152	Jakarta Pusat
163	6	153	Jakarta Selatan
164	6	154	Jakarta Timur
165	6	155	Jakarta Utara
166	6	189	Kepulauan Seribu
167	7	77	Boalemo
168	7	88	Bone Bolango
169	7	129	Gorontalo
170	7	130	Gorontalo
171	7	131	Gorontalo Utara
172	7	361	Pohuwato
173	8	50	Batang Hari
174	8	97	Bungo
175	8	156	Jambi
176	8	194	Kerinci
177	8	280	Merangin
178	8	293	Muaro Jambi
179	8	393	Sarolangun
180	8	442	Sungaipenuh
181	8	460	Tanjung Jabung Barat
182	8	461	Tanjung Jabung Timur
183	8	471	Tebo
184	9	22	Bandung
185	9	23	Bandung
186	9	24	Bandung Barat
187	9	34	Banjar
188	9	54	Bekasi
189	9	55	Bekasi
190	9	78	Bogor
191	9	79	Bogor
192	9	103	Ciamis
193	9	104	Cianjur
194	9	107	Cimahi
195	9	108	Cirebon
196	9	109	Cirebon
197	9	115	Depok
198	9	126	Garut
199	9	149	Indramayu
200	9	171	Karawang
201	9	211	Kuningan
202	9	252	Majalengka
203	9	332	Pangandaran
204	9	376	Purwakarta
205	9	428	Subang
206	9	430	Sukabumi
207	9	431	Sukabumi
208	9	440	Sumedang
209	9	468	Tasikmalaya
210	9	469	Tasikmalaya
211	10	37	Banjarnegara
212	10	41	Banyumas
213	10	49	Batang
214	10	76	Blora
215	10	91	Boyolali
216	10	92	Brebes
217	10	105	Cilacap
218	10	113	Demak
219	10	134	Grobogan
220	10	163	Jepara
221	10	169	Karanganyar
222	10	177	Kebumen
223	10	181	Kendal
224	10	196	Klaten
225	10	209	Kudus
226	10	249	Magelang
227	10	250	Magelang
228	10	344	Pati
229	10	348	Pekalongan
230	10	349	Pekalongan
231	10	352	Pemalang
232	10	375	Purbalingga
233	10	377	Purworejo
234	10	380	Rembang
235	10	386	Salatiga
236	10	398	Semarang
237	10	399	Semarang
238	10	427	Sragen
239	10	433	Sukoharjo
240	10	445	Surakarta (Solo)
241	10	472	Tegal
242	10	473	Tegal
243	10	476	Temanggung
244	10	497	Wonogiri
245	10	498	Wonosobo
246	11	31	Bangkalan
247	11	42	Banyuwangi
248	11	51	Batu
249	11	74	Blitar
250	11	75	Blitar
251	11	80	Bojonegoro
252	11	86	Bondowoso
253	11	133	Gresik
254	11	160	Jember
255	11	164	Jombang
256	11	178	Kediri
257	11	179	Kediri
258	11	222	Lamongan
259	11	243	Lumajang
260	11	247	Madiun
261	11	248	Madiun
262	11	251	Magetan
263	11	256	Malang
264	11	255	Malang
265	11	289	Mojokerto
266	11	290	Mojokerto
267	11	305	Nganjuk
268	11	306	Ngawi
269	11	317	Pacitan
270	11	330	Pamekasan
271	11	342	Pasuruan
272	11	343	Pasuruan
273	11	363	Ponorogo
274	11	369	Probolinggo
275	11	370	Probolinggo
276	11	390	Sampang
277	11	409	Sidoarjo
278	11	418	Situbondo
279	11	441	Sumenep
280	11	444	Surabaya
281	11	487	Trenggalek
282	11	489	Tuban
283	11	492	Tulungagung
284	12	61	Bengkayang
285	12	168	Kapuas Hulu
286	12	176	Kayong Utara
287	12	195	Ketapang
288	12	208	Kubu Raya
289	12	228	Landak
290	12	279	Melawi
291	12	364	Pontianak
292	12	365	Pontianak
293	12	388	Sambas
294	12	391	Sanggau
295	12	395	Sekadau
296	12	415	Singkawang
297	12	417	Sintang
298	13	18	Balangan
299	13	33	Banjar
300	13	35	Banjarbaru
301	13	36	Banjarmasin
302	13	43	Barito Kuala
303	13	143	Hulu Sungai Selatan
304	13	144	Hulu Sungai Tengah
305	13	145	Hulu Sungai Utara
306	13	203	Kotabaru
307	13	446	Tabalong
308	13	452	Tanah Bumbu
309	13	454	Tanah Laut
310	13	466	Tapin
311	14	44	Barito Selatan
312	14	45	Barito Timur
313	14	46	Barito Utara
314	14	136	Gunung Mas
315	14	167	Kapuas
316	14	174	Katingan
317	14	205	Kotawaringin Barat
318	14	206	Kotawaringin Timur
319	14	221	Lamandau
320	14	296	Murung Raya
321	14	326	Palangka Raya
322	14	371	Pulang Pisau
323	14	405	Seruyan
324	14	432	Sukamara
325	15	19	Balikpapan
326	15	66	Berau
327	15	89	Bontang
328	15	214	Kutai Barat
329	15	215	Kutai Kartanegara
330	15	216	Kutai Timur
331	15	341	Paser
332	15	354	Penajam Paser Utara
333	15	387	Samarinda
334	16	96	Bulungan (Bulongan)
335	16	257	Malinau
336	16	311	Nunukan
337	16	450	Tana Tidung
338	16	467	Tarakan
339	17	48	Batam
340	17	71	Bintan
341	17	172	Karimun
342	17	184	Kepulauan Anambas
343	17	237	Lingga
344	17	302	Natuna
345	17	462	Tanjung Pinang
346	18	21	Bandar Lampung
347	18	223	Lampung Barat
348	18	224	Lampung Selatan
349	18	225	Lampung Tengah
350	18	226	Lampung Timur
351	18	227	Lampung Utara
352	18	282	Mesuji
353	18	283	Metro
354	18	355	Pesawaran
355	18	356	Pesisir Barat
356	18	368	Pringsewu
357	18	458	Tanggamus
358	18	490	Tulang Bawang
359	18	491	Tulang Bawang Barat
360	18	496	Way Kanan
361	19	14	Ambon
362	19	99	Buru
363	19	100	Buru Selatan
364	19	185	Kepulauan Aru
365	19	258	Maluku Barat Daya
366	19	259	Maluku Tengah
367	19	260	Maluku Tenggara
368	19	261	Maluku Tenggara Barat
369	19	400	Seram Bagian Barat
370	19	401	Seram Bagian Timur
371	19	488	Tual
372	20	138	Halmahera Barat
373	20	139	Halmahera Selatan
374	20	140	Halmahera Tengah
375	20	141	Halmahera Timur
376	20	142	Halmahera Utara
377	20	191	Kepulauan Sula
378	20	372	Pulau Morotai
379	20	477	Ternate
380	20	478	Tidore Kepulauan
381	21	1	Aceh Barat
382	21	2	Aceh Barat Daya
383	21	3	Aceh Besar
384	21	4	Aceh Jaya
385	21	5	Aceh Selatan
386	21	6	Aceh Singkil
387	21	7	Aceh Tamiang
388	21	8	Aceh Tengah
389	21	9	Aceh Tenggara
390	21	10	Aceh Timur
391	21	11	Aceh Utara
392	21	20	Banda Aceh
393	21	59	Bener Meriah
394	21	72	Bireuen
395	21	127	Gayo Lues
396	21	230	Langsa
397	21	235	Lhokseumawe
398	21	300	Nagan Raya
399	21	358	Pidie
400	21	359	Pidie Jaya
401	21	384	Sabang
402	21	414	Simeulue
403	21	429	Subulussalam
404	22	68	Bima
405	22	69	Bima
406	22	118	Dompu
407	22	238	Lombok Barat
408	22	239	Lombok Tengah
409	22	240	Lombok Timur
410	22	241	Lombok Utara
411	22	276	Mataram
412	22	438	Sumbawa
413	22	439	Sumbawa Barat
414	23	13	Alor
415	23	58	Belu
416	23	122	Ende
417	23	125	Flores Timur
418	23	212	Kupang
419	23	213	Kupang
420	23	234	Lembata
421	23	269	Manggarai
422	23	270	Manggarai Barat
423	23	271	Manggarai Timur
424	23	301	Nagekeo
425	23	304	Ngada
426	23	383	Rote Ndao
427	23	385	Sabu Raijua
428	23	412	Sikka
429	23	434	Sumba Barat
430	23	435	Sumba Barat Daya
431	23	436	Sumba Tengah
432	23	437	Sumba Timur
433	23	479	Timor Tengah Selatan
434	23	480	Timor Tengah Utara
435	24	16	Asmat
436	24	67	Biak Numfor
437	24	90	Boven Digoel
438	24	111	Deiyai (Deliyai)
439	24	117	Dogiyai
440	24	150	Intan Jaya
441	24	157	Jayapura
442	24	158	Jayapura
443	24	159	Jayawijaya
444	24	180	Keerom
445	24	193	Kepulauan Yapen (Yapen Waropen)
446	24	231	Lanny Jaya
447	24	263	Mamberamo Raya
448	24	264	Mamberamo Tengah
449	24	274	Mappi
450	24	281	Merauke
451	24	284	Mimika
452	24	299	Nabire
453	24	303	Nduga
454	24	335	Paniai
455	24	347	Pegunungan Bintang
456	24	373	Puncak
457	24	374	Puncak Jaya
458	24	392	Sarmi
459	24	443	Supiori
460	24	484	Tolikara
461	24	495	Waropen
462	24	499	Yahukimo
463	24	500	Yalimo
464	25	124	Fakfak
465	25	165	Kaimana
466	25	272	Manokwari
467	25	273	Manokwari Selatan
468	25	277	Maybrat
469	25	346	Pegunungan Arfak
470	25	378	Raja Ampat
471	25	424	Sorong
472	25	425	Sorong
473	25	426	Sorong Selatan
474	25	449	Tambrauw
475	25	474	Teluk Bintuni
476	25	475	Teluk Wondama
477	26	60	Bengkalis
478	26	120	Dumai
479	26	147	Indragiri Hilir
480	26	148	Indragiri Hulu
481	26	166	Kampar
482	26	187	Kepulauan Meranti
483	26	207	Kuantan Singingi
484	26	350	Pekanbaru
485	26	351	Pelalawan
486	26	381	Rokan Hilir
487	26	382	Rokan Hulu
488	26	406	Siak
489	27	253	Majene
490	27	262	Mamasa
491	27	265	Mamuju
492	27	266	Mamuju Utara
493	27	362	Polewali Mandar
494	28	38	Bantaeng
495	28	47	Barru
496	28	87	Bone
497	28	95	Bulukumba
498	28	123	Enrekang
499	28	132	Gowa
500	28	162	Jeneponto
501	28	244	Luwu
502	28	245	Luwu Timur
503	28	246	Luwu Utara
504	28	254	Makassar
505	28	275	Maros
506	28	328	Palopo
507	28	333	Pangkajene Kepulauan
508	28	336	Parepare
509	28	360	Pinrang
510	28	396	Selayar (Kepulauan Selayar)
511	28	408	Sidenreng Rappang/Rapang
512	28	416	Sinjai
513	28	423	Soppeng
514	28	448	Takalar
515	28	451	Tana Toraja
516	28	486	Toraja Utara
517	28	493	Wajo
518	29	25	Banggai
519	29	26	Banggai Kepulauan
520	29	98	Buol
521	29	119	Donggala
522	29	291	Morowali
523	29	329	Palu
524	29	338	Parigi Moutong
525	29	366	Poso
526	29	410	Sigi
527	29	482	Tojo Una-Una
528	29	483	Toli-Toli
529	30	53	Bau-Bau
530	30	85	Bombana
531	30	101	Buton
532	30	102	Buton Utara
533	30	182	Kendari
534	30	198	Kolaka
535	30	199	Kolaka Utara
536	30	200	Konawe
537	30	201	Konawe Selatan
538	30	202	Konawe Utara
539	30	295	Muna
540	30	494	Wakatobi
541	31	73	Bitung
542	31	81	Bolaang Mongondow (Bolmong)
543	31	82	Bolaang Mongondow Selatan
544	31	83	Bolaang Mongondow Timur
545	31	84	Bolaang Mongondow Utara
546	31	188	Kepulauan Sangihe
547	31	190	Kepulauan Siau Tagulandang Biaro (Sitaro)
548	31	192	Kepulauan Talaud
549	31	204	Kotamobagu
550	31	267	Manado
551	31	285	Minahasa
552	31	286	Minahasa Selatan
553	31	287	Minahasa Tenggara
554	31	288	Minahasa Utara
555	31	485	Tomohon
556	32	12	Agam
557	32	93	Bukittinggi
558	32	116	Dharmasraya
559	32	186	Kepulauan Mentawai
560	32	236	Lima Puluh Koto/Kota
561	32	318	Padang
562	32	321	Padang Panjang
563	32	322	Padang Pariaman
564	32	337	Pariaman
565	32	339	Pasaman
566	32	340	Pasaman Barat
567	32	345	Payakumbuh
568	32	357	Pesisir Selatan
569	32	394	Sawah Lunto
570	32	411	Sijunjung (Sawah Lunto Sijunjung)
571	32	420	Solok
572	32	421	Solok
573	32	422	Solok Selatan
574	32	453	Tanah Datar
575	33	40	Banyuasin
576	33	121	Empat Lawang
577	33	220	Lahat
578	33	242	Lubuk Linggau
579	33	292	Muara Enim
580	33	297	Musi Banyuasin
581	33	298	Musi Rawas
582	33	312	Ogan Ilir
583	33	313	Ogan Komering Ilir
584	33	314	Ogan Komering Ulu
585	33	315	Ogan Komering Ulu Selatan
586	33	316	Ogan Komering Ulu Timur
587	33	324	Pagar Alam
588	33	327	Palembang
589	33	367	Prabumulih
590	34	15	Asahan
591	34	52	Batu Bara
592	34	70	Binjai
593	34	110	Dairi
594	34	112	Deli Serdang
595	34	137	Gunungsitoli
596	34	146	Humbang Hasundutan
597	34	173	Karo
598	34	217	Labuhan Batu
599	34	218	Labuhan Batu Selatan
600	34	219	Labuhan Batu Utara
601	34	229	Langkat
602	34	268	Mandailing Natal
603	34	278	Medan
604	34	307	Nias
605	34	308	Nias Barat
606	34	309	Nias Selatan
607	34	310	Nias Utara
608	34	319	Padang Lawas
609	34	320	Padang Lawas Utara
610	34	323	Padang Sidempuan
611	34	325	Pakpak Bharat
612	34	353	Pematang Siantar
613	34	389	Samosir
614	34	404	Serdang Bedagai
615	34	407	Sibolga
616	34	413	Simalungun
617	34	459	Tanjung Balai
618	34	463	Tapanuli Selatan
619	34	464	Tapanuli Tengah
620	34	465	Tapanuli Utara
621	34	470	Tebing Tinggi
622	34	481	Toba Samosir
\.


--
-- Data for Name: detail_pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detail_pesanan (id_detail, id_user, kd_product, pengiriman) FROM stdin;
9	3	KD-002 	JNE|OKE|69000|4-5 hari|Bali|Badung
10	3	KD-004 	JNE|OKE|69000|4-5 hari|Bali|Badung
\.


--
-- Data for Name: iklan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.iklan (id_iklan, nama_iklan, gambar) FROM stdin;
9	iklan 1	6549c205dbc56-facebook.svg
\.


--
-- Data for Name: pesanan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pesanan (id_pesanan, id_user, kd_product, qty_pesanan, warna, status) FROM stdin;
2	3	KD-004 	3	Blu	pesan
3	3	KD-002 	1	Red	pesan
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (kd_product, id_category, nama_product, qty_product, deskripsi, berat_product, warna, harga, gambar, ukuran_product) FROM stdin;
KD-005 	16	Laptop Lenovo Yoga 6	30	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,	4	Black	13000000	txWIPIIhKvvOhgzYqtRHPouRpBEXFu3oxq960o3T.jpg 9wfIUnACmkuH1mJNXzLibROcVBCxqbuRrbkajlDp.jpg E0GV04IBxofsax4SS869rtNLbAtZRVG1lWf5cEF3.jpg gpc1YCEZEvrWF9p4t4dhdTioo7kwi7OkYeE6errR.jpg	\N
KD-004 	21	Fashion 3	100	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,	100	Yellow Orange Purple	90000	PT8oukK2yQv2rZDlh8Dm1CaL6bDQY40369qRLqsx.jpg 1VZSNK9k4Q4zyZlZuoyaebr8AvuBHgx3SmlrVMnj.jpg RUqCka9RE9TI4RDmIuW7zkvkrtvRPi6Cl0VCccAu.jpg HJBMhGjrJOOuEw8g27mAH9GcUeMVvYEQ969DqloS.jpg	M L XL XXL
KD-001 	16	Test Product 1	100	this is keyboard	100	Yellow Orange Purple Green	100	8fYUe8wkHB8qiWmIBAsxAuGWLWqOTnd4ozCe53l8.jpg EbRFXiumXl0fRlvosiwwczuWHD4YHqcd86MWe5kz.jpg FV4QmmKmOchMvppV94Rko4ezP3qiHEO2AzLLDCDV.jpg FGf7vpP69bLbBkGoblfHzvt418KzQrSwp0X0053j.jpg	\N
KD-002 	15	Fashion Girl	100	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,	10	Yellow Orange	10	9CyJupP0pNruIvI6LdZ5QidxUYul7Z9IjPJHjwyT.jpg FpoRo32RHLiBXZ7ef188X0Swl7JWsotKiNHztfAA.jpg sm7nhaiihIKzM4pS1LSGd6XnpUKqgWgV0PWRc9ka.jpg K6KBTwH1P6IXjxhVD6suqbIV8Om0Bx6vUXOIoGDT.jpg	M L XL XXL
KD-003 	15	Fashion 2	100	Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,	10	Yellow Orange Purple	60000	QrdX6CYOo1407MyfdEqNuTbkXuKXSrIwbTEowml7.jpg 8VcuezTZD4efKVQpIrQxkBQh0uPintVHGmYSobsW.jpg hc3941DR2VyQ17OOxsazF1KrmvDxMQsE5JtA6Nfy.jpg MuilOfKHRpOYY09OWW7GFmjOWsv37D902uxzwNai.jpg	M L XL XXL
\.


--
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.provinces (id, province_id, name) FROM stdin;
20	1	Bali
21	2	Bangka Belitung
22	3	Banten
23	4	Bengkulu
24	5	DI Yogyakarta
25	6	DKI Jakarta
26	7	Gorontalo
27	8	Jambi
28	9	Jawa Barat
29	10	Jawa Tengah
30	11	Jawa Timur
31	12	Kalimantan Barat
32	13	Kalimantan Selatan
33	14	Kalimantan Tengah
34	15	Kalimantan Timur
35	16	Kalimantan Utara
36	17	Kepulauan Riau
37	18	Lampung
38	19	Maluku
39	20	Maluku Utara
40	21	Nanggroe Aceh Darussalam (NAD)
41	22	Nusa Tenggara Barat (NTB)
42	23	Nusa Tenggara Timur (NTT)
43	24	Papua
44	25	Papua Barat
45	26	Riau
46	27	Sulawesi Barat
47	28	Sulawesi Selatan
48	29	Sulawesi Tengah
49	30	Sulawesi Tenggara
50	31	Sulawesi Utara
51	32	Sumatera Barat
52	33	Sumatera Selatan
53	34	Sumatera Utara
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id_user, nama, email, no_telepon, alamat, password, role) FROM stdin;
2	Miftakul Huda	huda@gmail.com	0881036718737		$2y$10$imRLnzlMc1sdRdBBjDJZD.xuKxCsBLVF8I0piwuPFgOlxHPAci6f.	admin
3	Dwi Sri	dwisri@gmail.com	123245678912		$2y$10$zXrBVj8WNOUVXT8uBX7tNOEeJoc6qH6BVICYkbUTHSdTSyZrAVXay	user
\.


--
-- Name: category_id_category_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_category_seq', 30, true);


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cities_id_seq', 622, true);


--
-- Name: detail_pesanan_id_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detail_pesanan_id_pesanan_seq', 10, true);


--
-- Name: iklan_id_iklan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.iklan_id_iklan_seq', 9, true);


--
-- Name: pesanan_id_pesanan_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pesanan_id_pesanan_seq', 3, true);


--
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 53, true);


--
-- Name: users_id_user_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_user_seq', 3, true);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id_category);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: detail_pesanan detail_pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_pesanan
    ADD CONSTRAINT detail_pesanan_pkey PRIMARY KEY (id_detail);


--
-- Name: iklan iklan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT iklan_pkey PRIMARY KEY (id_iklan);


--
-- Name: pesanan pesanan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (id_pesanan);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (kd_product);


--
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id_user);


--
-- Name: product constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT constraint_fk FOREIGN KEY (id_category) REFERENCES public.category(id_category) ON DELETE CASCADE;


--
-- Name: pesanan constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT constraint_fk FOREIGN KEY (id_user) REFERENCES public.users(id_user) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

