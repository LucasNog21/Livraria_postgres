PGDMP  4    *                 }            Trilha_back_end_biblioteca    16.4    16.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16387    Trilha_back_end_biblioteca    DATABASE     �   CREATE DATABASE "Trilha_back_end_biblioteca" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 ,   DROP DATABASE "Trilha_back_end_biblioteca";
                postgres    false            �            1259    16408 
   biblioteca    TABLE     0  CREATE TABLE public.biblioteca (
    id_biblioteca integer NOT NULL,
    rua character varying(20) NOT NULL,
    bairro character varying(20) NOT NULL,
    cidade character varying(20) NOT NULL,
    prazo_padrao integer NOT NULL,
    id_bibliotecario integer NOT NULL,
    vencimento integer NOT NULL
);
    DROP TABLE public.biblioteca;
       public         heap    postgres    false            �            1259    16433 	   categoria    TABLE     �   CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nome character varying(20) NOT NULL,
    quantidade_livro integer NOT NULL,
    descricao character varying(20) NOT NULL,
    pendencia integer
);
    DROP TABLE public.categoria;
       public         heap    postgres    false            �            1259    16438    categoria_livro    TABLE     j   CREATE TABLE public.categoria_livro (
    id_livro integer NOT NULL,
    id_categoria integer NOT NULL
);
 #   DROP TABLE public.categoria_livro;
       public         heap    postgres    false            �            1259    16423    cliente    TABLE     �   CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    id_livro integer NOT NULL,
    nome_cliente character varying(20) NOT NULL,
    ocorrencia integer,
    email character varying(20) NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    16413    livro    TABLE     �   CREATE TABLE public.livro (
    id_livro integer NOT NULL,
    id_biblioteca integer NOT NULL,
    nome_livro character varying(60) NOT NULL,
    vencimento integer NOT NULL
);
    DROP TABLE public.livro;
       public         heap    postgres    false            �          0    16408 
   biblioteca 
   TABLE DATA           t   COPY public.biblioteca (id_biblioteca, rua, bairro, cidade, prazo_padrao, id_bibliotecario, vencimento) FROM stdin;
    public          postgres    false    215   j       �          0    16433 	   categoria 
   TABLE DATA           _   COPY public.categoria (id_categoria, nome, quantidade_livro, descricao, pendencia) FROM stdin;
    public          postgres    false    218   �                  0    16438    categoria_livro 
   TABLE DATA           A   COPY public.categoria_livro (id_livro, id_categoria) FROM stdin;
    public          postgres    false    219   :       �          0    16423    cliente 
   TABLE DATA           X   COPY public.cliente (id_cliente, id_livro, nome_cliente, ocorrencia, email) FROM stdin;
    public          postgres    false    217   j       �          0    16413    livro 
   TABLE DATA           P   COPY public.livro (id_livro, id_biblioteca, nome_livro, vencimento) FROM stdin;
    public          postgres    false    216   �       `           2606    16412    biblioteca pk_biblioteca 
   CONSTRAINT     a   ALTER TABLE ONLY public.biblioteca
    ADD CONSTRAINT pk_biblioteca PRIMARY KEY (id_biblioteca);
 B   ALTER TABLE ONLY public.biblioteca DROP CONSTRAINT pk_biblioteca;
       public            postgres    false    215            f           2606    16437    categoria pk_categoria 
   CONSTRAINT     ^   ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT pk_categoria PRIMARY KEY (id_categoria);
 @   ALTER TABLE ONLY public.categoria DROP CONSTRAINT pk_categoria;
       public            postgres    false    218            h           2606    16454 "   categoria_livro pk_categoria_livro 
   CONSTRAINT     t   ALTER TABLE ONLY public.categoria_livro
    ADD CONSTRAINT pk_categoria_livro PRIMARY KEY (id_livro, id_categoria);
 L   ALTER TABLE ONLY public.categoria_livro DROP CONSTRAINT pk_categoria_livro;
       public            postgres    false    219    219            d           2606    16427    cliente pk_cliente 
   CONSTRAINT     X   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
       public            postgres    false    217            b           2606    16417    livro pk_livro 
   CONSTRAINT     R   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT pk_livro PRIMARY KEY (id_livro);
 8   ALTER TABLE ONLY public.livro DROP CONSTRAINT pk_livro;
       public            postgres    false    216            k           2606    16443 #   categoria_livro fk1_categoria_livro    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_livro
    ADD CONSTRAINT fk1_categoria_livro FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);
 M   ALTER TABLE ONLY public.categoria_livro DROP CONSTRAINT fk1_categoria_livro;
       public          postgres    false    219    4706    216            l           2606    16448 #   categoria_livro fk2_categoria_livro    FK CONSTRAINT     �   ALTER TABLE ONLY public.categoria_livro
    ADD CONSTRAINT fk2_categoria_livro FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);
 M   ALTER TABLE ONLY public.categoria_livro DROP CONSTRAINT fk2_categoria_livro;
       public          postgres    false    4710    218    219            j           2606    16428    cliente fk_cliente    FK CONSTRAINT     x   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_cliente FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_cliente;
       public          postgres    false    216    217    4706            i           2606    16418    livro fk_livro    FK CONSTRAINT     �   ALTER TABLE ONLY public.livro
    ADD CONSTRAINT fk_livro FOREIGN KEY (id_biblioteca) REFERENCES public.biblioteca(id_biblioteca);
 8   ALTER TABLE ONLY public.livro DROP CONSTRAINT fk_livro;
       public          postgres    false    215    4704    216            �   k   x�3�N�KL�/Rp+�I���tN�+)��H,UH�/VpK-*�/�44�4�4�2���L.)H,J<��C��P��)�1\�SjN	X�sbQ��ŘV�tp��qqq i.�      �   E   x�3�L,K�+)-J�4��-�,ITH<����|N.#ΒԢ��"NC�L��k�e�	U�3Ā+F��� 1�              x�3�4�2�4�2bS 6�M9��b���� 4�x      �   [   x�3�4�t+�I�����L��s3s���s��9�8�RsJ�@
9��L$F������`����	�ЄĒ��*�I&��=... R>*�      �   �   x�E�1�0Eg�>RR
s$6$`dI��Iz&�z1\����w��@{iУ�ᑛ�Q)�M�x�IK����p�J�)V:k)\M����&�3/�0�������R��)��k�']����a��"~�+�     