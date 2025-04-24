--
-- PostgreSQL database dump
--

-- Dumped from database version 17.3
-- Dumped by pg_dump version 17.3

-- Started on 2025-04-25 00:28:41

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 228 (class 1259 OID 33148)
-- Name: blog_posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blog_posts (
    post_id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    publish_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    author_id integer NOT NULL
);


ALTER TABLE public.blog_posts OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 33147)
-- Name: blog_posts_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blog_posts_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_posts_post_id_seq OWNER TO postgres;

--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 227
-- Name: blog_posts_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blog_posts_post_id_seq OWNED BY public.blog_posts.post_id;


--
-- TOC entry 226 (class 1259 OID 33125)
-- Name: certificate_assignments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificate_assignments (
    assignment_id integer NOT NULL,
    member_id integer NOT NULL,
    certificate_id integer NOT NULL,
    course_id integer,
    assignment_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.certificate_assignments OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 33124)
-- Name: certificate_assignments_assignment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificate_assignments_assignment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificate_assignments_assignment_id_seq OWNER TO postgres;

--
-- TOC entry 4846 (class 0 OID 0)
-- Dependencies: 225
-- Name: certificate_assignments_assignment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificate_assignments_assignment_id_seq OWNED BY public.certificate_assignments.assignment_id;


--
-- TOC entry 224 (class 1259 OID 33115)
-- Name: certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.certificates (
    certificate_id integer NOT NULL,
    certificate_code character varying(100) NOT NULL,
    issue_date date DEFAULT CURRENT_DATE
);


ALTER TABLE public.certificates OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 33114)
-- Name: certificates_certificate_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.certificates_certificate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.certificates_certificate_id_seq OWNER TO postgres;

--
-- TOC entry 4847 (class 0 OID 0)
-- Dependencies: 223
-- Name: certificates_certificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.certificates_certificate_id_seq OWNED BY public.certificates.certificate_id;


--
-- TOC entry 220 (class 1259 OID 33088)
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    start_date date NOT NULL,
    end_date date,
    instructor character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 33087)
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_course_id_seq OWNER TO postgres;

--
-- TOC entry 4848 (class 0 OID 0)
-- Dependencies: 219
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- TOC entry 222 (class 1259 OID 33097)
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    enrollment_id integer NOT NULL,
    member_id integer NOT NULL,
    course_id integer NOT NULL,
    enrollment_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 33096)
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrollments_enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 4849 (class 0 OID 0)
-- Dependencies: 221
-- Name: enrollments_enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrollments_enrollment_id_seq OWNED BY public.enrollments.enrollment_id;


--
-- TOC entry 218 (class 1259 OID 33074)
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    member_id integer NOT NULL,
    username character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    registration_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 33073)
-- Name: members_member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.members_member_id_seq OWNER TO postgres;

--
-- TOC entry 4850 (class 0 OID 0)
-- Dependencies: 217
-- Name: members_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_member_id_seq OWNED BY public.members.member_id;


--
-- TOC entry 4669 (class 2604 OID 33151)
-- Name: blog_posts post_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts ALTER COLUMN post_id SET DEFAULT nextval('public.blog_posts_post_id_seq'::regclass);


--
-- TOC entry 4667 (class 2604 OID 33128)
-- Name: certificate_assignments assignment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_assignments ALTER COLUMN assignment_id SET DEFAULT nextval('public.certificate_assignments_assignment_id_seq'::regclass);


--
-- TOC entry 4665 (class 2604 OID 33118)
-- Name: certificates certificate_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates ALTER COLUMN certificate_id SET DEFAULT nextval('public.certificates_certificate_id_seq'::regclass);


--
-- TOC entry 4662 (class 2604 OID 33091)
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- TOC entry 4663 (class 2604 OID 33100)
-- Name: enrollments enrollment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments ALTER COLUMN enrollment_id SET DEFAULT nextval('public.enrollments_enrollment_id_seq'::regclass);


--
-- TOC entry 4660 (class 2604 OID 33077)
-- Name: members member_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN member_id SET DEFAULT nextval('public.members_member_id_seq'::regclass);


--
-- TOC entry 4688 (class 2606 OID 33156)
-- Name: blog_posts blog_posts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT blog_posts_pkey PRIMARY KEY (post_id);


--
-- TOC entry 4686 (class 2606 OID 33131)
-- Name: certificate_assignments certificate_assignments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_assignments
    ADD CONSTRAINT certificate_assignments_pkey PRIMARY KEY (assignment_id);


--
-- TOC entry 4682 (class 2606 OID 33123)
-- Name: certificates certificates_certificate_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_certificate_code_key UNIQUE (certificate_code);


--
-- TOC entry 4684 (class 2606 OID 33121)
-- Name: certificates certificates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (certificate_id);


--
-- TOC entry 4678 (class 2606 OID 33095)
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- TOC entry 4680 (class 2606 OID 33103)
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollment_id);


--
-- TOC entry 4672 (class 2606 OID 33086)
-- Name: members members_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);


--
-- TOC entry 4674 (class 2606 OID 33082)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- TOC entry 4676 (class 2606 OID 33084)
-- Name: members members_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_username_key UNIQUE (username);


--
-- TOC entry 4691 (class 2606 OID 33137)
-- Name: certificate_assignments fk_assignment_certificate; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_assignments
    ADD CONSTRAINT fk_assignment_certificate FOREIGN KEY (certificate_id) REFERENCES public.certificates(certificate_id) ON DELETE CASCADE;


--
-- TOC entry 4692 (class 2606 OID 33142)
-- Name: certificate_assignments fk_assignment_course; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_assignments
    ADD CONSTRAINT fk_assignment_course FOREIGN KEY (course_id) REFERENCES public.courses(course_id) ON DELETE SET NULL;


--
-- TOC entry 4693 (class 2606 OID 33132)
-- Name: certificate_assignments fk_assignment_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.certificate_assignments
    ADD CONSTRAINT fk_assignment_member FOREIGN KEY (member_id) REFERENCES public.members(member_id) ON DELETE CASCADE;


--
-- TOC entry 4694 (class 2606 OID 33157)
-- Name: blog_posts fk_blog_author; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blog_posts
    ADD CONSTRAINT fk_blog_author FOREIGN KEY (author_id) REFERENCES public.members(member_id) ON DELETE CASCADE;


--
-- TOC entry 4689 (class 2606 OID 33109)
-- Name: enrollments fk_course; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES public.courses(course_id) ON DELETE CASCADE;


--
-- TOC entry 4690 (class 2606 OID 33104)
-- Name: enrollments fk_member; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT fk_member FOREIGN KEY (member_id) REFERENCES public.members(member_id) ON DELETE CASCADE;


-- Completed on 2025-04-25 00:28:41

--
-- PostgreSQL database dump complete
--

