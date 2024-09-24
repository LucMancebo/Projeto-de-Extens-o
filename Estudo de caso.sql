--
-- PostgreSQL database dump
--

-- Dumped from database version 14.12
-- Dumped by pg_dump version 16.3



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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3370 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16420)
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    aluno_id integer NOT NULL,
    nome character varying(100),
    email character varying(100),
    telefone character varying(15),
    data_nascimento date,
    endereco character varying(255)
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16419)
-- Name: alunos_aluno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alunos_aluno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alunos_aluno_id_seq OWNER TO postgres;

--
-- TOC entry 3372 (class 0 OID 0)
-- Dependencies: 209
-- Name: alunos_aluno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alunos_aluno_id_seq OWNED BY public.alunos.aluno_id;


--
-- TOC entry 214 (class 1259 OID 16436)
-- Name: categorias_curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias_curso (
    categoria_id integer NOT NULL,
    nome_categoria character varying(50)
);


ALTER TABLE public.categorias_curso OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16435)
-- Name: categorias_curso_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_curso_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_curso_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3373 (class 0 OID 0)
-- Dependencies: 213
-- Name: categorias_curso_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_curso_categoria_id_seq OWNED BY public.categorias_curso.categoria_id;


--
-- TOC entry 216 (class 1259 OID 16445)
-- Name: cursos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cursos (
    curso_id integer NOT NULL,
    nome_curso character varying(100),
    descricao text,
    preco numeric(10,2),
    duracao_em_meses integer,
    categoria_id integer
);


ALTER TABLE public.cursos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16444)
-- Name: cursos_curso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cursos_curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cursos_curso_id_seq OWNER TO postgres;

--
-- TOC entry 3374 (class 0 OID 0)
-- Dependencies: 215
-- Name: cursos_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cursos_curso_id_seq OWNED BY public.cursos.curso_id;


--
-- TOC entry 222 (class 1259 OID 16496)
-- Name: eja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.eja (
    eja_id integer NOT NULL,
    curso_id integer,
    nivel_eja character varying(50)
);


ALTER TABLE public.eja OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16495)
-- Name: eja_eja_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.eja_eja_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.eja_eja_id_seq OWNER TO postgres;

--
-- TOC entry 3375 (class 0 OID 0)
-- Dependencies: 221
-- Name: eja_eja_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.eja_eja_id_seq OWNED BY public.eja.eja_id;


--
-- TOC entry 212 (class 1259 OID 16429)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    funcionario_id integer NOT NULL,
    nome character varying(100),
    cargo character varying(50),
    data_contratacao date,
    salario numeric(10,2)
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16428)
-- Name: funcionarios_funcionario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.funcionarios_funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.funcionarios_funcionario_id_seq OWNER TO postgres;

--
-- TOC entry 3376 (class 0 OID 0)
-- Dependencies: 211
-- Name: funcionarios_funcionario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.funcionarios_funcionario_id_seq OWNED BY public.funcionarios.funcionario_id;


--
-- TOC entry 220 (class 1259 OID 16482)
-- Name: normas_regulamentadoras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.normas_regulamentadoras (
    nr_id integer NOT NULL,
    curso_id integer,
    descricao_nr text,
    numero_nr character varying(10)
);


ALTER TABLE public.normas_regulamentadoras OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16481)
-- Name: normas_regulamentadoras_nr_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.normas_regulamentadoras_nr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.normas_regulamentadoras_nr_id_seq OWNER TO postgres;

--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 219
-- Name: normas_regulamentadoras_nr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.normas_regulamentadoras_nr_id_seq OWNED BY public.normas_regulamentadoras.nr_id;


--
-- TOC entry 218 (class 1259 OID 16459)
-- Name: vendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendas (
    venda_id integer NOT NULL,
    aluno_id integer,
    curso_id integer,
    funcionario_id integer,
    data_venda date DEFAULT CURRENT_DATE,
    valor_venda numeric(10,2)
);


ALTER TABLE public.vendas OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16458)
-- Name: vendas_venda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vendas_venda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vendas_venda_id_seq OWNER TO postgres;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 217
-- Name: vendas_venda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vendas_venda_id_seq OWNED BY public.vendas.venda_id;


--
-- TOC entry 3194 (class 2604 OID 16423)
-- Name: alunos aluno_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos ALTER COLUMN aluno_id SET DEFAULT nextval('public.alunos_aluno_id_seq'::regclass);


--
-- TOC entry 3196 (class 2604 OID 16439)
-- Name: categorias_curso categoria_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_curso ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_curso_categoria_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 16448)
-- Name: cursos curso_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos ALTER COLUMN curso_id SET DEFAULT nextval('public.cursos_curso_id_seq'::regclass);


--
-- TOC entry 3201 (class 2604 OID 16499)
-- Name: eja eja_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eja ALTER COLUMN eja_id SET DEFAULT nextval('public.eja_eja_id_seq'::regclass);


--
-- TOC entry 3195 (class 2604 OID 16432)
-- Name: funcionarios funcionario_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios ALTER COLUMN funcionario_id SET DEFAULT nextval('public.funcionarios_funcionario_id_seq'::regclass);


--
-- TOC entry 3200 (class 2604 OID 16485)
-- Name: normas_regulamentadoras nr_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.normas_regulamentadoras ALTER COLUMN nr_id SET DEFAULT nextval('public.normas_regulamentadoras_nr_id_seq'::regclass);


--
-- TOC entry 3198 (class 2604 OID 16462)
-- Name: vendas venda_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas ALTER COLUMN venda_id SET DEFAULT nextval('public.vendas_venda_id_seq'::regclass);


--
-- TOC entry 3203 (class 2606 OID 16427)
-- Name: alunos alunos_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_email_key UNIQUE (email);


--
-- TOC entry 3205 (class 2606 OID 16425)
-- Name: alunos alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (aluno_id);


--
-- TOC entry 3209 (class 2606 OID 16443)
-- Name: categorias_curso categorias_curso_nome_categoria_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_curso
    ADD CONSTRAINT categorias_curso_nome_categoria_key UNIQUE (nome_categoria);


--
-- TOC entry 3211 (class 2606 OID 16441)
-- Name: categorias_curso categorias_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias_curso
    ADD CONSTRAINT categorias_curso_pkey PRIMARY KEY (categoria_id);


--
-- TOC entry 3213 (class 2606 OID 16452)
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (curso_id);


--
-- TOC entry 3219 (class 2606 OID 16501)
-- Name: eja eja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eja
    ADD CONSTRAINT eja_pkey PRIMARY KEY (eja_id);


--
-- TOC entry 3207 (class 2606 OID 16434)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (funcionario_id);


--
-- TOC entry 3217 (class 2606 OID 16489)
-- Name: normas_regulamentadoras normas_regulamentadoras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.normas_regulamentadoras
    ADD CONSTRAINT normas_regulamentadoras_pkey PRIMARY KEY (nr_id);


--
-- TOC entry 3215 (class 2606 OID 16465)
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (venda_id);


--
-- TOC entry 3220 (class 2606 OID 16453)
-- Name: cursos cursos_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias_curso(categoria_id);


--
-- TOC entry 3225 (class 2606 OID 16502)
-- Name: eja eja_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.eja
    ADD CONSTRAINT eja_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(curso_id);


--
-- TOC entry 3224 (class 2606 OID 16490)
-- Name: normas_regulamentadoras normas_regulamentadoras_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.normas_regulamentadoras
    ADD CONSTRAINT normas_regulamentadoras_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(curso_id);


--
-- TOC entry 3221 (class 2606 OID 16466)
-- Name: vendas vendas_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.alunos(aluno_id);


--
-- TOC entry 3222 (class 2606 OID 16471)
-- Name: vendas vendas_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(curso_id);


--
-- TOC entry 3223 (class 2606 OID 16476)
-- Name: vendas vendas_funcionario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_funcionario_id_fkey FOREIGN KEY (funcionario_id) REFERENCES public.funcionarios(funcionario_id);


--
-- TOC entry 3371 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-09-24 

--
-- PostgreSQL database dump complete
--

