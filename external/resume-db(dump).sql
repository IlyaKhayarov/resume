PGDMP                         w            resume    11.3    11.3 7    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            d           1262    24586    resume    DATABASE     �   CREATE DATABASE resume WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE resume;
             resume    false            �            1259    24633    certificate    TABLE     �   CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(50) NOT NULL,
    large_url character varying(255) NOT NULL,
    small_url character varying(255) NOT NULL
);
    DROP TABLE public.certificate;
       public         resume    false            �            1259    24783    certificate_seq    SEQUENCE     x   CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.certificate_seq;
       public       resume    false            �            1259    24652    course    TABLE     �   CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(60) NOT NULL,
    shcool character varying(60) NOT NULL,
    finish_date date
);
    DROP TABLE public.course;
       public         resume    false            �            1259    24785 
   course_seq    SEQUENCE     s   CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.course_seq;
       public       resume    false            �            1259    24670 	   education    TABLE       CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary character varying(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty character varying(255) NOT NULL
);
    DROP TABLE public.education;
       public         resume    false            �            1259    24787    education_seq    SEQUENCE     v   CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.education_seq;
       public       resume    false            �            1259    24685    hobby    TABLE        CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL
);
    DROP TABLE public.hobby;
       public         resume    false            �            1259    24789 	   hobby_seq    SEQUENCE     r   CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.hobby_seq;
       public       resume    false            �            1259    24696    language    TABLE     �   CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL,
    level character varying(18) NOT NULL,
    type character varying(20) DEFAULT 0 NOT NULL
);
    DROP TABLE public.language;
       public         resume    false            �            1259    24791    language_seq    SEQUENCE     u   CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.language_seq;
       public       resume    false            �            1259    24708    practic    TABLE     N  CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo character varying(255),
    src character varying(255)
);
    DROP TABLE public.practic;
       public         resume    false            �            1259    24793    practic_seq    SEQUENCE     t   CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.practic_seq;
       public       resume    false            �            1259    24587    profile    TABLE     M  CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid character varying(100) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birth_day date,
    phone character varying(20),
    email character varying(100),
    country character varying(60),
    city character varying(100),
    objective text,
    summary text,
    large_photo character varying(255),
    small_photo character varying(255),
    info text,
    password character varying(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype character varying(80),
    vkontakte character varying(255),
    facebook character varying(255),
    linkedin character varying(255),
    github character varying(255),
    stackoverflow character varying(255)
);
    DROP TABLE public.profile;
       public         resume    false            �            1259    24752    profile_restore    TABLE     k   CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token character varying(255) NOT NULL
);
 #   DROP TABLE public.profile_restore;
       public         resume    false            �            1259    24795    profile_seq    SEQUENCE     t   CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.profile_seq;
       public       resume    false            �            1259    24723    skill    TABLE     �   CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category character varying(50) NOT NULL,
    value text NOT NULL
);
    DROP TABLE public.skill;
       public         resume    false            �            1259    24776    skill_category    TABLE     l   CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category character varying(50) NOT NULL
);
 "   DROP TABLE public.skill_category;
       public         resume    false            �            1259    24797 	   skill_seq    SEQUENCE     r   CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.skill_seq;
       public       resume    false            �
           2606    24640    certificate certificate_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_pkey;
       public         resume    false    197            �
           2606    24656    course course_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public         resume    false    198            �
           2606    24677    education education_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.education DROP CONSTRAINT education_pkey;
       public         resume    false    199            �
           2606    24689    hobby hobby_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hobby DROP CONSTRAINT hobby_pkey;
       public         resume    false    200            �
           2606    24700    language language_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.language DROP CONSTRAINT language_pkey;
       public         resume    false    201            �
           2606    24715    practic practic_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.practic DROP CONSTRAINT practic_pkey;
       public         resume    false    202            �
           2606    24613    profile profile_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_email_key;
       public         resume    false    196            �
           2606    24611    profile profile_phone_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_phone_key UNIQUE (phone);
 C   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_phone_key;
       public         resume    false    196            �
           2606    24607    profile profile_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public         resume    false    196            �
           2606    24756 $   profile_restore profile_restore_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_pkey;
       public         resume    false    204            �
           2606    24758 )   profile_restore profile_restore_token_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_token_key UNIQUE (token);
 S   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_token_key;
       public         resume    false    204            �
           2606    24609    profile profile_uid_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_uid_key UNIQUE (uid);
 A   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_uid_key;
       public         resume    false    196            �
           2606    24782 *   skill_category skill_category_category_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT skill_category_category_key UNIQUE (category);
 T   ALTER TABLE ONLY public.skill_category DROP CONSTRAINT skill_category_category_key;
       public         resume    false    205            �
           2606    24780 "   skill_category skill_category_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT skill_category_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.skill_category DROP CONSTRAINT skill_category_pkey;
       public         resume    false    205            �
           2606    24730    skill skill_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pkey;
       public         resume    false    203            �
           1259    24802    certificate_idx    INDEX     M   CREATE INDEX certificate_idx ON public.certificate USING btree (id_profile);
 #   DROP INDEX public.certificate_idx;
       public         resume    false    197            �
           1259    24810 
   course_idx    INDEX     D   CREATE INDEX course_idx ON public.course USING btree (finish_date);
    DROP INDEX public.course_idx;
       public         resume    false    198            �
           1259    24811    course_idx1    INDEX     D   CREATE INDEX course_idx1 ON public.course USING btree (id_profile);
    DROP INDEX public.course_idx1;
       public         resume    false    198            �
           1259    24683    education_idx    INDEX     P   CREATE UNIQUE INDEX education_idx ON public.education USING btree (id_profile);
 !   DROP INDEX public.education_idx;
       public         resume    false    199            �
           1259    24808    education_idx1    INDEX     K   CREATE INDEX education_idx1 ON public.education USING btree (finish_year);
 "   DROP INDEX public.education_idx1;
       public         resume    false    199            �
           1259    24801 	   hobby_idx    INDEX     A   CREATE INDEX hobby_idx ON public.hobby USING btree (id_profile);
    DROP INDEX public.hobby_idx;
       public         resume    false    200            �
           1259    24804    language_idx    INDEX     G   CREATE INDEX language_idx ON public.language USING btree (id_profile);
     DROP INDEX public.language_idx;
       public         resume    false    201            �
           1259    24806    practic_idx    INDEX     E   CREATE INDEX practic_idx ON public.practic USING btree (id_profile);
    DROP INDEX public.practic_idx;
       public         resume    false    202            �
           1259    24809    practic_idx1    INDEX     G   CREATE INDEX practic_idx1 ON public.practic USING btree (finish_date);
     DROP INDEX public.practic_idx1;
       public         resume    false    202            �
           1259    24807 	   skill_idx    INDEX     A   CREATE INDEX skill_idx ON public.skill USING btree (id_profile);
    DROP INDEX public.skill_idx;
       public         resume    false    203            �
           2606    24646    certificate certificate_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 D   ALTER TABLE ONLY public.certificate DROP CONSTRAINT certificate_fk;
       public       resume    false    2747    197    196            �
           2606    24662    course course_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.course DROP CONSTRAINT course_fk;
       public       resume    false    196    198    2747            �
           2606    24678    education education_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.education DROP CONSTRAINT education_fk;
       public       resume    false    199    196    2747            �
           2606    24690    hobby hobby_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.hobby DROP CONSTRAINT hobby_fk;
       public       resume    false    200    2747    196            �
           2606    24746    language language_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.language DROP CONSTRAINT language_fk;
       public       resume    false    196    2747    201            �
           2606    24741    practic practic_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.practic DROP CONSTRAINT practic_fk;
       public       resume    false    202    196    2747            �
           2606    24759 "   profile_restore profile_restore_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_fk FOREIGN KEY (id) REFERENCES public.profile(id) ON UPDATE SET NULL ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.profile_restore DROP CONSTRAINT profile_restore_fk;
       public       resume    false    204    2747    196            �
           2606    24736    skill skill_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
 8   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_fk;
       public       resume    false    2747    203    196           