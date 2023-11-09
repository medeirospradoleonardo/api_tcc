--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0 (Debian 16.0-1.pgdg120+1)
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
-- Name: active_sprints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_sprints (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.active_sprints OWNER TO postgres;

--
-- Name: active_sprints_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_sprints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_sprints_id_seq OWNER TO postgres;

--
-- Name: active_sprints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_sprints_id_seq OWNED BY public.active_sprints.id;


--
-- Name: active_sprints_project_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_sprints_project_links (
    id integer NOT NULL,
    active_sprint_id integer,
    project_id integer
);


ALTER TABLE public.active_sprints_project_links OWNER TO postgres;

--
-- Name: active_sprints_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_sprints_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_sprints_project_links_id_seq OWNER TO postgres;

--
-- Name: active_sprints_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_sprints_project_links_id_seq OWNED BY public.active_sprints_project_links.id;


--
-- Name: active_sprints_sprint_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_sprints_sprint_links (
    id integer NOT NULL,
    active_sprint_id integer,
    sprint_id integer
);


ALTER TABLE public.active_sprints_sprint_links OWNER TO postgres;

--
-- Name: active_sprints_sprint_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_sprints_sprint_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_sprints_sprint_links_id_seq OWNER TO postgres;

--
-- Name: active_sprints_sprint_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_sprints_sprint_links_id_seq OWNED BY public.active_sprints_sprint_links.id;


--
-- Name: active_sprints_user_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.active_sprints_user_links (
    id integer NOT NULL,
    active_sprint_id integer,
    user_id integer,
    active_sprint_order double precision
);


ALTER TABLE public.active_sprints_user_links OWNER TO postgres;

--
-- Name: active_sprints_user_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.active_sprints_user_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.active_sprints_user_links_id_seq OWNER TO postgres;

--
-- Name: active_sprints_user_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.active_sprints_user_links_id_seq OWNED BY public.active_sprints_user_links.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO postgres;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO postgres;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO postgres;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards (
    id integer NOT NULL,
    title character varying(255),
    time_estimated integer,
    type character varying(255),
    description text,
    status character varying(255),
    conclusion_date date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.boards OWNER TO postgres;

--
-- Name: boards_author_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_author_links (
    id integer NOT NULL,
    board_id integer,
    user_id integer,
    board_order double precision
);


ALTER TABLE public.boards_author_links OWNER TO postgres;

--
-- Name: boards_author_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_author_links_id_seq OWNER TO postgres;

--
-- Name: boards_author_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_author_links_id_seq OWNED BY public.boards_author_links.id;


--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_id_seq OWNER TO postgres;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: boards_project_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_project_links (
    id integer NOT NULL,
    board_id integer,
    project_id integer,
    board_order double precision
);


ALTER TABLE public.boards_project_links OWNER TO postgres;

--
-- Name: boards_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_project_links_id_seq OWNER TO postgres;

--
-- Name: boards_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_project_links_id_seq OWNED BY public.boards_project_links.id;


--
-- Name: boards_responsible_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_responsible_links (
    id integer NOT NULL,
    board_id integer,
    user_id integer,
    board_order double precision
);


ALTER TABLE public.boards_responsible_links OWNER TO postgres;

--
-- Name: boards_responsible_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_responsible_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_responsible_links_id_seq OWNER TO postgres;

--
-- Name: boards_responsible_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_responsible_links_id_seq OWNED BY public.boards_responsible_links.id;


--
-- Name: boards_sprint_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boards_sprint_links (
    id integer NOT NULL,
    board_id integer,
    sprint_id integer,
    board_order double precision
);


ALTER TABLE public.boards_sprint_links OWNER TO postgres;

--
-- Name: boards_sprint_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.boards_sprint_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.boards_sprint_links_id_seq OWNER TO postgres;

--
-- Name: boards_sprint_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.boards_sprint_links_id_seq OWNED BY public.boards_sprint_links.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.categories OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO postgres;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: categories_knowledges_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categories_knowledges_links (
    id integer NOT NULL,
    category_id integer,
    knowledge_id integer,
    knowledge_order double precision,
    category_order double precision
);


ALTER TABLE public.categories_knowledges_links OWNER TO postgres;

--
-- Name: categories_knowledges_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categories_knowledges_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_knowledges_links_id_seq OWNER TO postgres;

--
-- Name: categories_knowledges_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categories_knowledges_links_id_seq OWNED BY public.categories_knowledges_links.id;


--
-- Name: comentaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentaries (
    id integer NOT NULL,
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.comentaries OWNER TO postgres;

--
-- Name: comentaries_author_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentaries_author_links (
    id integer NOT NULL,
    comentary_id integer,
    user_id integer,
    comentary_order double precision
);


ALTER TABLE public.comentaries_author_links OWNER TO postgres;

--
-- Name: comentaries_author_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentaries_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentaries_author_links_id_seq OWNER TO postgres;

--
-- Name: comentaries_author_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentaries_author_links_id_seq OWNED BY public.comentaries_author_links.id;


--
-- Name: comentaries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentaries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comentaries_id_seq OWNER TO postgres;

--
-- Name: comentaries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentaries_id_seq OWNED BY public.comentaries.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO postgres;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO postgres;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO postgres;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO postgres;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO postgres;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: knowledges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledges (
    id integer NOT NULL,
    title character varying(255),
    content text,
    all_users_can_edit boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.knowledges OWNER TO postgres;

--
-- Name: knowledges_author_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledges_author_links (
    id integer NOT NULL,
    knowledge_id integer,
    user_id integer,
    knowledge_order double precision
);


ALTER TABLE public.knowledges_author_links OWNER TO postgres;

--
-- Name: knowledges_author_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knowledges_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knowledges_author_links_id_seq OWNER TO postgres;

--
-- Name: knowledges_author_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knowledges_author_links_id_seq OWNED BY public.knowledges_author_links.id;


--
-- Name: knowledges_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knowledges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knowledges_id_seq OWNER TO postgres;

--
-- Name: knowledges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knowledges_id_seq OWNED BY public.knowledges.id;


--
-- Name: knowledges_stories_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledges_stories_links (
    id integer NOT NULL,
    knowledge_id integer,
    story_id integer,
    story_order double precision
);


ALTER TABLE public.knowledges_stories_links OWNER TO postgres;

--
-- Name: knowledges_stories_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knowledges_stories_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knowledges_stories_links_id_seq OWNER TO postgres;

--
-- Name: knowledges_stories_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knowledges_stories_links_id_seq OWNED BY public.knowledges_stories_links.id;


--
-- Name: knowledges_users_can_edit_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledges_users_can_edit_links (
    id integer NOT NULL,
    knowledge_id integer,
    user_id integer,
    user_order double precision
);


ALTER TABLE public.knowledges_users_can_edit_links OWNER TO postgres;

--
-- Name: knowledges_users_can_edit_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knowledges_users_can_edit_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.knowledges_users_can_edit_links_id_seq OWNER TO postgres;

--
-- Name: knowledges_users_can_edit_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knowledges_users_can_edit_links_id_seq OWNED BY public.knowledges_users_can_edit_links.id;


--
-- Name: project_user_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_user_roles (
    id integer NOT NULL,
    role character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.project_user_roles OWNER TO postgres;

--
-- Name: project_user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_user_roles_id_seq OWNER TO postgres;

--
-- Name: project_user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_user_roles_id_seq OWNED BY public.project_user_roles.id;


--
-- Name: project_user_roles_project_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_user_roles_project_links (
    id integer NOT NULL,
    project_user_role_id integer,
    project_id integer,
    project_user_role_order double precision
);


ALTER TABLE public.project_user_roles_project_links OWNER TO postgres;

--
-- Name: project_user_roles_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_user_roles_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_user_roles_project_links_id_seq OWNER TO postgres;

--
-- Name: project_user_roles_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_user_roles_project_links_id_seq OWNED BY public.project_user_roles_project_links.id;


--
-- Name: project_user_roles_user_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.project_user_roles_user_links (
    id integer NOT NULL,
    project_user_role_id integer,
    user_id integer,
    project_user_role_order double precision
);


ALTER TABLE public.project_user_roles_user_links OWNER TO postgres;

--
-- Name: project_user_roles_user_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.project_user_roles_user_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_user_roles_user_links_id_seq OWNER TO postgres;

--
-- Name: project_user_roles_user_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.project_user_roles_user_links_id_seq OWNED BY public.project_user_roles_user_links.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: sprints; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sprints (
    id integer NOT NULL,
    name character varying(255),
    initial_date date,
    final_date date,
    expand boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sprints OWNER TO postgres;

--
-- Name: sprints_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sprints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sprints_id_seq OWNER TO postgres;

--
-- Name: sprints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sprints_id_seq OWNED BY public.sprints.id;


--
-- Name: sprints_project_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sprints_project_links (
    id integer NOT NULL,
    sprint_id integer,
    project_id integer,
    sprint_order double precision
);


ALTER TABLE public.sprints_project_links OWNER TO postgres;

--
-- Name: sprints_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sprints_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sprints_project_links_id_seq OWNER TO postgres;

--
-- Name: sprints_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sprints_project_links_id_seq OWNED BY public.sprints_project_links.id;


--
-- Name: stories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stories (
    id integer NOT NULL,
    author character varying(255),
    date timestamp(6) without time zone,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.stories OWNER TO postgres;

--
-- Name: stories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stories_id_seq OWNER TO postgres;

--
-- Name: stories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stories_id_seq OWNED BY public.stories.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO postgres;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO postgres;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO postgres;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO postgres;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO postgres;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO postgres;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO postgres;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO postgres;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO postgres;

--
-- Name: up_users_active_project_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_active_project_links (
    id integer NOT NULL,
    user_id integer,
    project_id integer
);


ALTER TABLE public.up_users_active_project_links OWNER TO postgres;

--
-- Name: up_users_active_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_active_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_active_project_links_id_seq OWNER TO postgres;

--
-- Name: up_users_active_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_active_project_links_id_seq OWNED BY public.up_users_active_project_links.id;


--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO postgres;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO postgres;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO postgres;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO postgres;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: active_sprints id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints ALTER COLUMN id SET DEFAULT nextval('public.active_sprints_id_seq'::regclass);


--
-- Name: active_sprints_project_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_project_links ALTER COLUMN id SET DEFAULT nextval('public.active_sprints_project_links_id_seq'::regclass);


--
-- Name: active_sprints_sprint_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_sprint_links ALTER COLUMN id SET DEFAULT nextval('public.active_sprints_sprint_links_id_seq'::regclass);


--
-- Name: active_sprints_user_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_user_links ALTER COLUMN id SET DEFAULT nextval('public.active_sprints_user_links_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: boards_author_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_author_links ALTER COLUMN id SET DEFAULT nextval('public.boards_author_links_id_seq'::regclass);


--
-- Name: boards_project_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_project_links ALTER COLUMN id SET DEFAULT nextval('public.boards_project_links_id_seq'::regclass);


--
-- Name: boards_responsible_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_responsible_links ALTER COLUMN id SET DEFAULT nextval('public.boards_responsible_links_id_seq'::regclass);


--
-- Name: boards_sprint_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_sprint_links ALTER COLUMN id SET DEFAULT nextval('public.boards_sprint_links_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categories_knowledges_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_knowledges_links ALTER COLUMN id SET DEFAULT nextval('public.categories_knowledges_links_id_seq'::regclass);


--
-- Name: comentaries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries ALTER COLUMN id SET DEFAULT nextval('public.comentaries_id_seq'::regclass);


--
-- Name: comentaries_author_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries_author_links ALTER COLUMN id SET DEFAULT nextval('public.comentaries_author_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: knowledges id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges ALTER COLUMN id SET DEFAULT nextval('public.knowledges_id_seq'::regclass);


--
-- Name: knowledges_author_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_author_links ALTER COLUMN id SET DEFAULT nextval('public.knowledges_author_links_id_seq'::regclass);


--
-- Name: knowledges_stories_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_stories_links ALTER COLUMN id SET DEFAULT nextval('public.knowledges_stories_links_id_seq'::regclass);


--
-- Name: knowledges_users_can_edit_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_users_can_edit_links ALTER COLUMN id SET DEFAULT nextval('public.knowledges_users_can_edit_links_id_seq'::regclass);


--
-- Name: project_user_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles ALTER COLUMN id SET DEFAULT nextval('public.project_user_roles_id_seq'::regclass);


--
-- Name: project_user_roles_project_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_project_links ALTER COLUMN id SET DEFAULT nextval('public.project_user_roles_project_links_id_seq'::regclass);


--
-- Name: project_user_roles_user_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_user_links ALTER COLUMN id SET DEFAULT nextval('public.project_user_roles_user_links_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: sprints id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints ALTER COLUMN id SET DEFAULT nextval('public.sprints_id_seq'::regclass);


--
-- Name: sprints_project_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints_project_links ALTER COLUMN id SET DEFAULT nextval('public.sprints_project_links_id_seq'::regclass);


--
-- Name: stories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stories ALTER COLUMN id SET DEFAULT nextval('public.stories_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_active_project_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_active_project_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_active_project_links_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: active_sprints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_sprints (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
3	2023-10-20 19:14:58.024	2023-10-20 19:14:58.024	\N	\N
2	2023-10-19 16:52:11.996	2023-10-20 23:49:42.463	\N	\N
\.


--
-- Data for Name: active_sprints_project_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_sprints_project_links (id, active_sprint_id, project_id) FROM stdin;
2	2	3
3	3	3
\.


--
-- Data for Name: active_sprints_sprint_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_sprints_sprint_links (id, active_sprint_id, sprint_id) FROM stdin;
7	3	1
9	2	1
\.


--
-- Data for Name: active_sprints_user_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.active_sprints_user_links (id, active_sprint_id, user_id, active_sprint_order) FROM stdin;
2	2	8	1
3	3	1	1
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:53.797	2023-10-18 17:03:53.797	\N	\N
2	plugin::content-manager.explorer.create	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:53.807	2023-10-18 17:03:53.807	\N	\N
3	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:53.816	2023-10-18 17:03:53.816	\N	\N
4	plugin::content-manager.explorer.create	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:53.824	2023-10-18 17:03:53.824	\N	\N
5	plugin::content-manager.explorer.create	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:53.831	2023-10-18 17:03:53.831	\N	\N
6	plugin::content-manager.explorer.create	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:53.852	2023-10-18 17:03:53.852	\N	\N
7	plugin::content-manager.explorer.create	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:53.859	2023-10-18 17:03:53.859	\N	\N
8	plugin::content-manager.explorer.create	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:53.873	2023-10-18 17:03:53.873	\N	\N
9	plugin::content-manager.explorer.create	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:53.881	2023-10-18 17:03:53.881	\N	\N
10	plugin::content-manager.explorer.read	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:53.89	2023-10-18 17:03:53.89	\N	\N
11	plugin::content-manager.explorer.read	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:53.897	2023-10-18 17:03:53.897	\N	\N
12	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:53.903	2023-10-18 17:03:53.903	\N	\N
13	plugin::content-manager.explorer.read	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:53.92	2023-10-18 17:03:53.92	\N	\N
14	plugin::content-manager.explorer.read	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:53.927	2023-10-18 17:03:53.927	\N	\N
15	plugin::content-manager.explorer.read	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:53.933	2023-10-18 17:03:53.933	\N	\N
16	plugin::content-manager.explorer.read	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:53.939	2023-10-18 17:03:53.939	\N	\N
17	plugin::content-manager.explorer.read	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:53.947	2023-10-18 17:03:53.947	\N	\N
18	plugin::content-manager.explorer.read	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:53.955	2023-10-18 17:03:53.955	\N	\N
19	plugin::content-manager.explorer.update	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:53.962	2023-10-18 17:03:53.962	\N	\N
20	plugin::content-manager.explorer.update	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:53.968	2023-10-18 17:03:53.968	\N	\N
21	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:53.975	2023-10-18 17:03:53.975	\N	\N
22	plugin::content-manager.explorer.update	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:53.981	2023-10-18 17:03:53.981	\N	\N
23	plugin::content-manager.explorer.update	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:53.987	2023-10-18 17:03:53.987	\N	\N
24	plugin::content-manager.explorer.update	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:53.995	2023-10-18 17:03:53.995	\N	\N
25	plugin::content-manager.explorer.update	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:54.001	2023-10-18 17:03:54.001	\N	\N
26	plugin::content-manager.explorer.update	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:54.007	2023-10-18 17:03:54.007	\N	\N
27	plugin::content-manager.explorer.update	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:54.013	2023-10-18 17:03:54.013	\N	\N
28	plugin::content-manager.explorer.delete	api::active-sprint.active-sprint	{}	[]	2023-10-18 17:03:54.02	2023-10-18 17:03:54.02	\N	\N
29	plugin::content-manager.explorer.delete	api::board.board	{}	[]	2023-10-18 17:03:54.032	2023-10-18 17:03:54.032	\N	\N
30	plugin::content-manager.explorer.delete	api::category.category	{}	[]	2023-10-18 17:03:54.038	2023-10-18 17:03:54.038	\N	\N
31	plugin::content-manager.explorer.delete	api::comentary.comentary	{}	[]	2023-10-18 17:03:54.047	2023-10-18 17:03:54.047	\N	\N
32	plugin::content-manager.explorer.delete	api::knowledge.knowledge	{}	[]	2023-10-18 17:03:54.056	2023-10-18 17:03:54.056	\N	\N
33	plugin::content-manager.explorer.delete	api::project.project	{}	[]	2023-10-18 17:03:54.076	2023-10-18 17:03:54.076	\N	\N
34	plugin::content-manager.explorer.delete	api::project-user-role.project-user-role	{}	[]	2023-10-18 17:03:54.083	2023-10-18 17:03:54.083	\N	\N
35	plugin::content-manager.explorer.delete	api::sprint.sprint	{}	[]	2023-10-18 17:03:54.089	2023-10-18 17:03:54.089	\N	\N
36	plugin::content-manager.explorer.delete	api::story.story	{}	[]	2023-10-18 17:03:54.095	2023-10-18 17:03:54.095	\N	\N
37	plugin::content-manager.explorer.publish	api::comentary.comentary	{}	[]	2023-10-18 17:03:54.104	2023-10-18 17:03:54.104	\N	\N
38	plugin::upload.read	\N	{}	[]	2023-10-18 17:03:54.11	2023-10-18 17:03:54.11	\N	\N
39	plugin::upload.configure-view	\N	{}	[]	2023-10-18 17:03:54.115	2023-10-18 17:03:54.115	\N	\N
40	plugin::upload.assets.create	\N	{}	[]	2023-10-18 17:03:54.122	2023-10-18 17:03:54.122	\N	\N
41	plugin::upload.assets.update	\N	{}	[]	2023-10-18 17:03:54.133	2023-10-18 17:03:54.133	\N	\N
42	plugin::upload.assets.download	\N	{}	[]	2023-10-18 17:03:54.14	2023-10-18 17:03:54.14	\N	\N
43	plugin::upload.assets.copy-link	\N	{}	[]	2023-10-18 17:03:54.147	2023-10-18 17:03:54.147	\N	\N
44	plugin::content-manager.explorer.create	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	["admin::is-creator"]	2023-10-18 17:03:54.158	2023-10-18 17:03:54.158	\N	\N
45	plugin::content-manager.explorer.create	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	["admin::is-creator"]	2023-10-18 17:03:54.173	2023-10-18 17:03:54.173	\N	\N
46	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "knowledges"]}	["admin::is-creator"]	2023-10-18 17:03:54.181	2023-10-18 17:03:54.181	\N	\N
47	plugin::content-manager.explorer.create	api::comentary.comentary	{"fields": ["content", "author"]}	["admin::is-creator"]	2023-10-18 17:03:54.188	2023-10-18 17:03:54.188	\N	\N
48	plugin::content-manager.explorer.create	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	["admin::is-creator"]	2023-10-18 17:03:54.195	2023-10-18 17:03:54.195	\N	\N
49	plugin::content-manager.explorer.create	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	["admin::is-creator"]	2023-10-18 17:03:54.202	2023-10-18 17:03:54.202	\N	\N
50	plugin::content-manager.explorer.create	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	["admin::is-creator"]	2023-10-18 17:03:54.209	2023-10-18 17:03:54.209	\N	\N
51	plugin::content-manager.explorer.create	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	["admin::is-creator"]	2023-10-18 17:03:54.216	2023-10-18 17:03:54.216	\N	\N
52	plugin::content-manager.explorer.create	api::story.story	{"fields": ["author", "date"]}	["admin::is-creator"]	2023-10-18 17:03:54.224	2023-10-18 17:03:54.224	\N	\N
53	plugin::content-manager.explorer.read	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	["admin::is-creator"]	2023-10-18 17:03:54.232	2023-10-18 17:03:54.232	\N	\N
54	plugin::content-manager.explorer.read	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	["admin::is-creator"]	2023-10-18 17:03:54.239	2023-10-18 17:03:54.239	\N	\N
55	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "knowledges"]}	["admin::is-creator"]	2023-10-18 17:03:54.246	2023-10-18 17:03:54.246	\N	\N
56	plugin::content-manager.explorer.read	api::comentary.comentary	{"fields": ["content", "author"]}	["admin::is-creator"]	2023-10-18 17:03:54.254	2023-10-18 17:03:54.254	\N	\N
57	plugin::content-manager.explorer.read	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	["admin::is-creator"]	2023-10-18 17:03:54.282	2023-10-18 17:03:54.282	\N	\N
58	plugin::content-manager.explorer.read	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	["admin::is-creator"]	2023-10-18 17:03:54.288	2023-10-18 17:03:54.288	\N	\N
59	plugin::content-manager.explorer.read	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	["admin::is-creator"]	2023-10-18 17:03:54.292	2023-10-18 17:03:54.292	\N	\N
60	plugin::content-manager.explorer.read	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	["admin::is-creator"]	2023-10-18 17:03:54.301	2023-10-18 17:03:54.301	\N	\N
61	plugin::content-manager.explorer.read	api::story.story	{"fields": ["author", "date"]}	["admin::is-creator"]	2023-10-18 17:03:54.308	2023-10-18 17:03:54.308	\N	\N
62	plugin::content-manager.explorer.update	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	["admin::is-creator"]	2023-10-18 17:03:54.316	2023-10-18 17:03:54.316	\N	\N
63	plugin::content-manager.explorer.update	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	["admin::is-creator"]	2023-10-18 17:03:54.323	2023-10-18 17:03:54.323	\N	\N
64	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "knowledges"]}	["admin::is-creator"]	2023-10-18 17:03:54.33	2023-10-18 17:03:54.33	\N	\N
65	plugin::content-manager.explorer.update	api::comentary.comentary	{"fields": ["content", "author"]}	["admin::is-creator"]	2023-10-18 17:03:54.344	2023-10-18 17:03:54.344	\N	\N
66	plugin::content-manager.explorer.update	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	["admin::is-creator"]	2023-10-18 17:03:54.35	2023-10-18 17:03:54.35	\N	\N
67	plugin::content-manager.explorer.update	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	["admin::is-creator"]	2023-10-18 17:03:54.36	2023-10-18 17:03:54.36	\N	\N
68	plugin::content-manager.explorer.update	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	["admin::is-creator"]	2023-10-18 17:03:54.371	2023-10-18 17:03:54.371	\N	\N
69	plugin::content-manager.explorer.update	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	["admin::is-creator"]	2023-10-18 17:03:54.379	2023-10-18 17:03:54.379	\N	\N
70	plugin::content-manager.explorer.update	api::story.story	{"fields": ["author", "date"]}	["admin::is-creator"]	2023-10-18 17:03:54.386	2023-10-18 17:03:54.386	\N	\N
71	plugin::content-manager.explorer.delete	api::active-sprint.active-sprint	{}	["admin::is-creator"]	2023-10-18 17:03:54.393	2023-10-18 17:03:54.393	\N	\N
72	plugin::content-manager.explorer.delete	api::board.board	{}	["admin::is-creator"]	2023-10-18 17:03:54.399	2023-10-18 17:03:54.399	\N	\N
73	plugin::content-manager.explorer.delete	api::category.category	{}	["admin::is-creator"]	2023-10-18 17:03:54.406	2023-10-18 17:03:54.406	\N	\N
74	plugin::content-manager.explorer.delete	api::comentary.comentary	{}	["admin::is-creator"]	2023-10-18 17:03:54.412	2023-10-18 17:03:54.412	\N	\N
75	plugin::content-manager.explorer.delete	api::knowledge.knowledge	{}	["admin::is-creator"]	2023-10-18 17:03:54.418	2023-10-18 17:03:54.418	\N	\N
76	plugin::content-manager.explorer.delete	api::project.project	{}	["admin::is-creator"]	2023-10-18 17:03:54.424	2023-10-18 17:03:54.424	\N	\N
77	plugin::content-manager.explorer.delete	api::project-user-role.project-user-role	{}	["admin::is-creator"]	2023-10-18 17:03:54.431	2023-10-18 17:03:54.431	\N	\N
78	plugin::content-manager.explorer.delete	api::sprint.sprint	{}	["admin::is-creator"]	2023-10-18 17:03:54.444	2023-10-18 17:03:54.444	\N	\N
79	plugin::content-manager.explorer.delete	api::story.story	{}	["admin::is-creator"]	2023-10-18 17:03:54.45	2023-10-18 17:03:54.45	\N	\N
80	plugin::upload.read	\N	{}	["admin::is-creator"]	2023-10-18 17:03:54.456	2023-10-18 17:03:54.456	\N	\N
81	plugin::upload.configure-view	\N	{}	[]	2023-10-18 17:03:54.462	2023-10-18 17:03:54.462	\N	\N
82	plugin::upload.assets.create	\N	{}	[]	2023-10-18 17:03:54.486	2023-10-18 17:03:54.486	\N	\N
83	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2023-10-18 17:03:54.491	2023-10-18 17:03:54.491	\N	\N
84	plugin::upload.assets.download	\N	{}	[]	2023-10-18 17:03:54.505	2023-10-18 17:03:54.505	\N	\N
85	plugin::upload.assets.copy-link	\N	{}	[]	2023-10-18 17:03:54.513	2023-10-18 17:03:54.513	\N	\N
86	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "profilePhoto", "type", "ownerBoards", "comentaries", "responsibleboards", "knowledges", "projectUserRoles", "activeProject", "activeSprints"]}	[]	2023-10-18 17:03:54.577	2023-10-18 17:03:54.577	\N	\N
87	plugin::content-manager.explorer.create	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:54.584	2023-10-18 17:03:54.584	\N	\N
132	plugin::upload.read	\N	{}	[]	2023-10-18 17:03:54.91	2023-10-18 17:03:54.91	\N	\N
88	plugin::content-manager.explorer.create	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:54.59	2023-10-18 17:03:54.59	\N	\N
89	plugin::content-manager.explorer.create	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:54.596	2023-10-18 17:03:54.596	\N	\N
90	plugin::content-manager.explorer.create	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:54.613	2023-10-18 17:03:54.613	\N	\N
91	plugin::content-manager.explorer.create	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:54.626	2023-10-18 17:03:54.626	\N	\N
92	plugin::content-manager.explorer.create	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:54.632	2023-10-18 17:03:54.632	\N	\N
93	plugin::content-manager.explorer.create	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:54.637	2023-10-18 17:03:54.637	\N	\N
94	plugin::content-manager.explorer.create	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:54.643	2023-10-18 17:03:54.643	\N	\N
95	plugin::content-manager.explorer.create	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:54.648	2023-10-18 17:03:54.648	\N	\N
96	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "profilePhoto", "type", "ownerBoards", "comentaries", "responsibleboards", "knowledges", "projectUserRoles", "activeProject", "activeSprints"]}	[]	2023-10-18 17:03:54.653	2023-10-18 17:03:54.653	\N	\N
97	plugin::content-manager.explorer.read	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:54.657	2023-10-18 17:03:54.657	\N	\N
98	plugin::content-manager.explorer.read	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:54.666	2023-10-18 17:03:54.666	\N	\N
99	plugin::content-manager.explorer.read	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:54.673	2023-10-18 17:03:54.673	\N	\N
100	plugin::content-manager.explorer.read	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:54.681	2023-10-18 17:03:54.681	\N	\N
101	plugin::content-manager.explorer.read	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:54.691	2023-10-18 17:03:54.691	\N	\N
102	plugin::content-manager.explorer.read	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:54.696	2023-10-18 17:03:54.696	\N	\N
103	plugin::content-manager.explorer.read	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:54.702	2023-10-18 17:03:54.702	\N	\N
104	plugin::content-manager.explorer.read	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:54.708	2023-10-18 17:03:54.708	\N	\N
105	plugin::content-manager.explorer.read	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:54.714	2023-10-18 17:03:54.714	\N	\N
106	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role", "profilePhoto", "type", "ownerBoards", "comentaries", "responsibleboards", "knowledges", "projectUserRoles", "activeProject", "activeSprints"]}	[]	2023-10-18 17:03:54.721	2023-10-18 17:03:54.721	\N	\N
107	plugin::content-manager.explorer.update	api::active-sprint.active-sprint	{"fields": ["project", "sprint", "user"]}	[]	2023-10-18 17:03:54.728	2023-10-18 17:03:54.728	\N	\N
108	plugin::content-manager.explorer.update	api::board.board	{"fields": ["title", "timeEstimated", "type", "description", "sprint", "responsible", "author", "project", "status", "conclusionDate"]}	[]	2023-10-18 17:03:54.737	2023-10-18 17:03:54.737	\N	\N
109	plugin::content-manager.explorer.update	api::category.category	{"fields": ["name", "knowledges"]}	[]	2023-10-18 17:03:54.752	2023-10-18 17:03:54.752	\N	\N
110	plugin::content-manager.explorer.update	api::comentary.comentary	{"fields": ["content", "author"]}	[]	2023-10-18 17:03:54.759	2023-10-18 17:03:54.759	\N	\N
111	plugin::content-manager.explorer.update	api::knowledge.knowledge	{"fields": ["title", "categories", "content", "author", "usersCanEdit", "stories", "allUsersCanEdit"]}	[]	2023-10-18 17:03:54.765	2023-10-18 17:03:54.765	\N	\N
112	plugin::content-manager.explorer.update	api::project.project	{"fields": ["name", "sprints", "projectUserRoles", "boards"]}	[]	2023-10-18 17:03:54.775	2023-10-18 17:03:54.775	\N	\N
113	plugin::content-manager.explorer.update	api::project-user-role.project-user-role	{"fields": ["role", "user", "project"]}	[]	2023-10-18 17:03:54.78	2023-10-18 17:03:54.78	\N	\N
114	plugin::content-manager.explorer.update	api::sprint.sprint	{"fields": ["name", "initialDate", "finalDate", "boards", "project", "expand"]}	[]	2023-10-18 17:03:54.785	2023-10-18 17:03:54.785	\N	\N
115	plugin::content-manager.explorer.update	api::story.story	{"fields": ["author", "date"]}	[]	2023-10-18 17:03:54.79	2023-10-18 17:03:54.79	\N	\N
116	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2023-10-18 17:03:54.796	2023-10-18 17:03:54.796	\N	\N
117	plugin::content-manager.explorer.delete	api::active-sprint.active-sprint	{}	[]	2023-10-18 17:03:54.8	2023-10-18 17:03:54.8	\N	\N
118	plugin::content-manager.explorer.delete	api::board.board	{}	[]	2023-10-18 17:03:54.806	2023-10-18 17:03:54.806	\N	\N
119	plugin::content-manager.explorer.delete	api::category.category	{}	[]	2023-10-18 17:03:54.81	2023-10-18 17:03:54.81	\N	\N
120	plugin::content-manager.explorer.delete	api::comentary.comentary	{}	[]	2023-10-18 17:03:54.82	2023-10-18 17:03:54.82	\N	\N
121	plugin::content-manager.explorer.delete	api::knowledge.knowledge	{}	[]	2023-10-18 17:03:54.826	2023-10-18 17:03:54.826	\N	\N
122	plugin::content-manager.explorer.delete	api::project.project	{}	[]	2023-10-18 17:03:54.832	2023-10-18 17:03:54.832	\N	\N
123	plugin::content-manager.explorer.delete	api::project-user-role.project-user-role	{}	[]	2023-10-18 17:03:54.839	2023-10-18 17:03:54.839	\N	\N
124	plugin::content-manager.explorer.delete	api::sprint.sprint	{}	[]	2023-10-18 17:03:54.847	2023-10-18 17:03:54.847	\N	\N
125	plugin::content-manager.explorer.delete	api::story.story	{}	[]	2023-10-18 17:03:54.853	2023-10-18 17:03:54.853	\N	\N
126	plugin::content-manager.explorer.publish	api::comentary.comentary	{}	[]	2023-10-18 17:03:54.858	2023-10-18 17:03:54.858	\N	\N
127	plugin::content-manager.single-types.configure-view	\N	{}	[]	2023-10-18 17:03:54.868	2023-10-18 17:03:54.868	\N	\N
128	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2023-10-18 17:03:54.874	2023-10-18 17:03:54.874	\N	\N
129	plugin::content-manager.components.configure-layout	\N	{}	[]	2023-10-18 17:03:54.883	2023-10-18 17:03:54.883	\N	\N
130	plugin::content-type-builder.read	\N	{}	[]	2023-10-18 17:03:54.89	2023-10-18 17:03:54.89	\N	\N
131	plugin::email.settings.read	\N	{}	[]	2023-10-18 17:03:54.903	2023-10-18 17:03:54.903	\N	\N
133	plugin::upload.assets.create	\N	{}	[]	2023-10-18 17:03:54.916	2023-10-18 17:03:54.916	\N	\N
134	plugin::upload.assets.update	\N	{}	[]	2023-10-18 17:03:54.93	2023-10-18 17:03:54.93	\N	\N
135	plugin::upload.assets.download	\N	{}	[]	2023-10-18 17:03:54.939	2023-10-18 17:03:54.939	\N	\N
136	plugin::upload.assets.copy-link	\N	{}	[]	2023-10-18 17:03:54.947	2023-10-18 17:03:54.947	\N	\N
137	plugin::upload.configure-view	\N	{}	[]	2023-10-18 17:03:54.957	2023-10-18 17:03:54.957	\N	\N
138	plugin::upload.settings.read	\N	{}	[]	2023-10-18 17:03:54.974	2023-10-18 17:03:54.974	\N	\N
139	plugin::i18n.locale.create	\N	{}	[]	2023-10-18 17:03:54.982	2023-10-18 17:03:54.982	\N	\N
140	plugin::i18n.locale.read	\N	{}	[]	2023-10-18 17:03:54.988	2023-10-18 17:03:54.988	\N	\N
141	plugin::i18n.locale.update	\N	{}	[]	2023-10-18 17:03:54.994	2023-10-18 17:03:54.994	\N	\N
142	plugin::i18n.locale.delete	\N	{}	[]	2023-10-18 17:03:55.004	2023-10-18 17:03:55.004	\N	\N
143	plugin::users-permissions.roles.create	\N	{}	[]	2023-10-18 17:03:55.009	2023-10-18 17:03:55.009	\N	\N
144	plugin::users-permissions.roles.read	\N	{}	[]	2023-10-18 17:03:55.015	2023-10-18 17:03:55.015	\N	\N
145	plugin::users-permissions.roles.update	\N	{}	[]	2023-10-18 17:03:55.023	2023-10-18 17:03:55.023	\N	\N
146	plugin::users-permissions.roles.delete	\N	{}	[]	2023-10-18 17:03:55.029	2023-10-18 17:03:55.029	\N	\N
147	plugin::users-permissions.providers.read	\N	{}	[]	2023-10-18 17:03:55.035	2023-10-18 17:03:55.035	\N	\N
148	plugin::users-permissions.providers.update	\N	{}	[]	2023-10-18 17:03:55.041	2023-10-18 17:03:55.041	\N	\N
149	plugin::users-permissions.email-templates.read	\N	{}	[]	2023-10-18 17:03:55.057	2023-10-18 17:03:55.057	\N	\N
150	plugin::users-permissions.email-templates.update	\N	{}	[]	2023-10-18 17:03:55.063	2023-10-18 17:03:55.063	\N	\N
151	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2023-10-18 17:03:55.078	2023-10-18 17:03:55.078	\N	\N
152	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2023-10-18 17:03:55.098	2023-10-18 17:03:55.098	\N	\N
153	admin::marketplace.read	\N	{}	[]	2023-10-18 17:03:55.147	2023-10-18 17:03:55.147	\N	\N
154	admin::webhooks.create	\N	{}	[]	2023-10-18 17:03:55.154	2023-10-18 17:03:55.154	\N	\N
155	admin::webhooks.read	\N	{}	[]	2023-10-18 17:03:55.16	2023-10-18 17:03:55.16	\N	\N
156	admin::webhooks.update	\N	{}	[]	2023-10-18 17:03:55.165	2023-10-18 17:03:55.165	\N	\N
157	admin::webhooks.delete	\N	{}	[]	2023-10-18 17:03:55.171	2023-10-18 17:03:55.171	\N	\N
158	admin::users.create	\N	{}	[]	2023-10-18 17:03:55.177	2023-10-18 17:03:55.177	\N	\N
159	admin::users.read	\N	{}	[]	2023-10-18 17:03:55.183	2023-10-18 17:03:55.183	\N	\N
160	admin::users.update	\N	{}	[]	2023-10-18 17:03:55.19	2023-10-18 17:03:55.19	\N	\N
161	admin::users.delete	\N	{}	[]	2023-10-18 17:03:55.195	2023-10-18 17:03:55.195	\N	\N
162	admin::roles.create	\N	{}	[]	2023-10-18 17:03:55.201	2023-10-18 17:03:55.201	\N	\N
163	admin::roles.read	\N	{}	[]	2023-10-18 17:03:55.206	2023-10-18 17:03:55.206	\N	\N
164	admin::roles.update	\N	{}	[]	2023-10-18 17:03:55.214	2023-10-18 17:03:55.214	\N	\N
165	admin::roles.delete	\N	{}	[]	2023-10-18 17:03:55.221	2023-10-18 17:03:55.221	\N	\N
166	admin::api-tokens.access	\N	{}	[]	2023-10-18 17:03:55.227	2023-10-18 17:03:55.227	\N	\N
167	admin::api-tokens.create	\N	{}	[]	2023-10-18 17:03:55.233	2023-10-18 17:03:55.233	\N	\N
168	admin::api-tokens.read	\N	{}	[]	2023-10-18 17:03:55.239	2023-10-18 17:03:55.239	\N	\N
169	admin::api-tokens.update	\N	{}	[]	2023-10-18 17:03:55.247	2023-10-18 17:03:55.247	\N	\N
170	admin::api-tokens.regenerate	\N	{}	[]	2023-10-18 17:03:55.255	2023-10-18 17:03:55.255	\N	\N
171	admin::api-tokens.delete	\N	{}	[]	2023-10-18 17:03:55.263	2023-10-18 17:03:55.263	\N	\N
172	admin::project-settings.update	\N	{}	[]	2023-10-18 17:03:55.284	2023-10-18 17:03:55.284	\N	\N
173	admin::project-settings.read	\N	{}	[]	2023-10-18 17:03:55.291	2023-10-18 17:03:55.291	\N	\N
174	admin::transfer.tokens.access	\N	{}	[]	2023-10-18 17:03:55.298	2023-10-18 17:03:55.298	\N	\N
175	admin::transfer.tokens.create	\N	{}	[]	2023-10-18 17:03:55.307	2023-10-18 17:03:55.307	\N	\N
176	admin::transfer.tokens.read	\N	{}	[]	2023-10-18 17:03:55.315	2023-10-18 17:03:55.315	\N	\N
177	admin::transfer.tokens.update	\N	{}	[]	2023-10-18 17:03:55.325	2023-10-18 17:03:55.325	\N	\N
178	admin::transfer.tokens.regenerate	\N	{}	[]	2023-10-18 17:03:55.333	2023-10-18 17:03:55.333	\N	\N
179	admin::transfer.tokens.delete	\N	{}	[]	2023-10-18 17:03:55.339	2023-10-18 17:03:55.339	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
28	28	2	28
29	29	2	29
30	30	2	30
31	31	2	31
32	32	2	32
33	33	2	33
34	34	2	34
35	35	2	35
36	36	2	36
37	37	2	37
38	38	2	38
39	39	2	39
40	40	2	40
41	41	2	41
42	42	2	42
43	43	2	43
44	44	3	1
45	45	3	2
46	46	3	3
47	47	3	4
48	48	3	5
49	49	3	6
50	50	3	7
51	51	3	8
52	52	3	9
53	53	3	10
54	54	3	11
55	55	3	12
56	56	3	13
57	57	3	14
58	58	3	15
59	59	3	16
60	60	3	17
61	61	3	18
62	62	3	19
63	63	3	20
64	64	3	21
65	65	3	22
66	66	3	23
67	67	3	24
68	68	3	25
69	69	3	26
70	70	3	27
71	71	3	28
72	72	3	29
73	73	3	30
74	74	3	31
75	75	3	32
76	76	3	33
77	77	3	34
78	78	3	35
79	79	3	36
80	80	3	37
81	81	3	38
82	82	3	39
83	83	3	40
84	84	3	41
85	85	3	42
86	86	1	1
87	87	1	2
88	88	1	3
89	89	1	4
90	90	1	5
91	91	1	6
92	92	1	7
93	93	1	8
94	94	1	9
95	95	1	10
96	96	1	11
97	97	1	12
98	98	1	13
99	99	1	14
100	100	1	15
101	101	1	16
102	102	1	17
103	103	1	18
104	104	1	19
105	105	1	20
106	106	1	21
107	107	1	22
108	108	1	23
109	109	1	24
110	110	1	25
111	111	1	26
112	112	1	27
113	113	1	28
114	114	1	29
115	115	1	30
116	116	1	31
117	117	1	32
118	118	1	33
119	119	1	34
120	120	1	35
121	121	1	36
122	122	1	37
123	123	1	38
124	124	1	39
125	125	1	40
126	126	1	41
127	127	1	42
128	128	1	43
129	129	1	44
130	130	1	45
131	131	1	46
132	132	1	47
133	133	1	48
134	134	1	49
135	135	1	50
136	136	1	51
137	137	1	52
138	138	1	53
139	139	1	54
140	140	1	55
141	141	1	56
142	142	1	57
143	143	1	58
144	144	1	59
145	145	1	60
146	146	1	61
147	147	1	62
148	148	1	63
149	149	1	64
150	150	1	65
151	151	1	66
152	152	1	67
153	153	1	68
154	154	1	69
155	155	1	70
156	156	1	71
157	157	1	72
158	158	1	73
159	159	1	74
160	160	1	75
161	161	1	76
162	162	1	77
163	163	1	78
164	164	1	79
165	165	1	80
166	166	1	81
167	167	1	82
168	168	1	83
169	169	1	84
170	170	1	85
171	171	1	86
172	172	1	87
173	173	1	88
174	174	1	89
175	175	1	90
176	176	1	91
177	177	1	92
178	178	1	93
179	179	1	94
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-10-18 17:03:53.766	2023-10-18 17:03:53.766	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-10-18 17:03:53.774	2023-10-18 17:03:53.774	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-10-18 17:03:53.779	2023-10-18 17:03:53.779	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Leonardo	Medeiros Prado	\N	leonardo_medeiros_prado@hotmail.com	$2a$10$XAzcIkRv3Gq0pf2z/hwNaOM6Tj22XH5lVLwYCRmIE1TKf02S8vNT6	\N	\N	t	f	\N	2023-10-18 17:04:15.411	2023-10-18 17:04:15.411	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards (id, title, time_estimated, type, description, status, conclusion_date, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
3	Criação dos inputs do usuário no frontend	1	task	<p>Criar os inputs:</p>\n<ul>\n<li>Nome (input text);</li>\n<li>Email (input email);</li>\n<li>Senha (input password).</li>\n</ul>\n	concluded	2023-10-19	2023-10-19 04:00:00.118	2023-10-19 04:58:51.059	\N	1
15	Fazer a a integração back e front da login do usuário	1	task	<p><span style="color: rgba(0,0,0,0.87);background-color: rgb(255,255,255);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;">Fazer a uma Requisição POST  do front para o back afim de submeter os dados dos inputs do front para o back e verificar se a resposta é positiva ou negativa.</span>&nbsp;</p>\n	notInitiated	\N	2023-10-19 04:27:48.141	2023-10-19 04:58:30.409	\N	1
28	Criar o dado alarme no back	1	task	<p>Um alarme deve ter:</p>\n<ul>\n<li>Horario (Datatime);</li>\n<li>Nome (Text).</li>\n</ul>\n	notInitiated	\N	2023-10-19 15:40:15.258	2023-10-19 15:40:15.258	\N	\N
29	Fazer integração com o back	1	task	<p>Fazer integração com o back afim de conseguir todos os alarmes do usuário em questão</p>\n	notInitiated	\N	2023-10-19 15:41:32.87	2023-10-19 15:41:42.893	\N	\N
4	Validação dos inputs no front	1	task	<p>Validar os inputs da seguinte maneira:</p>\n<ul>\n<li>Senha não pode ter menos que 5 caracteres;</li>\n<li>Email precisa ser válido.</li>\n</ul>\n	concluded	2023-10-19	2023-10-19 04:04:58.675	2023-10-19 15:46:38.21	\N	1
14	Criação dos inputs do usuário no frontend	1	task	<p>Criar os inputs:</p>\n<ul>\n<li>Email (input email);</li>\n<li>Senha (input password).</li>\n</ul>\n	inProgress	\N	2023-10-19 04:27:05.201	2023-10-19 15:46:48.101	\N	1
27	Criar um componente que lista todos alarmes	1	task	<p>Criar um componente no front que lista todos alarmes relacionados a conta em questão</p>\n	notInitiated	\N	2023-10-19 15:39:02.33	2023-10-19 15:46:58.485	\N	\N
30	Disparar uma notificação quando o horário do alarme chegar	1	task	<p>Criar a funcionalidade que faz com que o app, ao detectar que chegou no horário marcado por algum dos alarmes, dispara uma notificação.</p>\n	notInitiated	\N	2023-10-19 15:45:35.104	2023-10-19 15:47:06.865	\N	\N
2	Criação dos dados do usuário no backend	1	task	<p>Criar os dados:</p>\n<ul>\n<li>Nome;</li>\n<li>Email;</li>\n<li>Senha.</li>\n</ul>\n	concluded	2023-10-19	2023-10-19 03:58:50.141	2023-10-19 16:52:48.751	\N	1
5	Fazer a a integração back e front da criação do usuário	4	task	<p>Fazer a uma Requisição POST  do front para o back afim de submeter os dados dos inputs do front para o banco de dados do back.</p>\n	concluded	2023-10-19	2023-10-19 04:07:45.615	2023-10-20 23:33:44.864	\N	1
\.


--
-- Data for Name: boards_author_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_author_links (id, board_id, user_id, board_order) FROM stdin;
28	2	8	1
29	3	8	2
30	14	8	3
31	5	8	4
32	15	8	5
33	4	8	6
42	27	8	7
43	28	8	8
46	29	8	9
48	30	8	10
\.


--
-- Data for Name: boards_project_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_project_links (id, board_id, project_id, board_order) FROM stdin;
3	2	3	1
5	3	3	2
8	4	3	3
12	5	3	4
60	14	3	5
67	15	3	6
195	28	3	7
187	27	3	8
206	29	3	9
217	30	3	10
\.


--
-- Data for Name: boards_responsible_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_responsible_links (id, board_id, user_id, board_order) FROM stdin;
43	28	8	1
46	29	8	2
34	3	7	1
36	5	7	2
38	15	7	3
49	4	9	1
50	14	9	2
51	27	9	3
52	30	9	4
55	2	7	4
\.


--
-- Data for Name: boards_sprint_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.boards_sprint_links (id, board_id, sprint_id, board_order) FROM stdin;
48	14	2	1
50	15	2	2
129	28	4	1
138	29	4	2
130	27	4	3
146	30	4	4
1	2	1	1
3	3	1	2
127	4	1	3
10	5	1	4
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Frontend	2023-10-19 05:28:36.7	2023-10-19 05:28:36.7	\N	\N
2	React	2023-10-19 05:28:36.709	2023-10-19 05:28:36.709	\N	\N
3	Kamtool	2023-10-19 15:53:33.545	2023-10-19 15:53:33.545	\N	\N
4	Tutorial	2023-10-19 15:53:33.546	2023-10-19 15:53:33.546	\N	\N
5	Empresa	2023-10-19 16:03:38.464	2023-10-19 16:03:38.464	\N	\N
6	Git	2023-10-19 16:06:49.144	2023-10-19 16:06:49.144	\N	\N
7	Input	2023-10-19 16:55:12.923	2023-10-19 16:55:12.923	\N	\N
\.


--
-- Data for Name: categories_knowledges_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categories_knowledges_links (id, category_id, knowledge_id, knowledge_order, category_order) FROM stdin;
7	4	2	1	1
8	3	2	1	2
11	5	3	1	1
12	4	4	2	1
13	6	4	1	2
1	2	1	1	1
2	1	1	1	2
16	7	1	1	3
\.


--
-- Data for Name: comentaries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentaries (id, content, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: comentaries_author_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentaries_author_links (id, comentary_id, user_id, comentary_order) FROM stdin;
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-10-18 17:03:53.451	2023-10-18 17:03:53.451	\N	\N
\.


--
-- Data for Name: knowledges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knowledges (id, title, content, all_users_can_edit, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
2	Tutorial Criação de documento Kamtool	<p>Para criar um documento no <strong>Kamtool </strong>é muito simples. Primeiro você deve acessar a aba <strong>"Base de conhecimento"</strong>. Em seguida você deverá clicar no botão <strong>"Criar documento"</strong>. Feito isso, você irá em uma tela de criação de documento, onde você deverá escolher um título para o mesmo (<strong>obrigatório</strong>) e o conteúdo dele. Além disso, você pode selecionar categorias referentes a esse documento. Você poderá selecionar categorias já existentes ou criar mais categorias, caso não existam na base de conhecimento. Por fim, todo os usuários do sistema irão pode ver o seu documento, porem só poderão alterar se você der acesso utilizando o botão <strong>"usuários"</strong>, ao lado de <strong>"categorias"</strong>.</p>\n	f	2023-10-19 15:53:20.088	2023-10-19 15:56:47.517	\N	\N
3	Links e Acessos Úteis	<ul>\n<li><span style="color: rgb(3,5,23);background-color: rgb(250,250,250);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;">🔈</span> <strong>Servidor do discord: https://discord.com</strong></li>\n<li><strong>📧 Email da empresa: empresa@email.com</strong></li>\n</ul>\n	f	2023-10-19 16:02:49.675	2023-10-19 16:03:38.519	\N	\N
4	Tutorial Git	<p style="text-align:start;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Se você deseja instalar o Git no Linux através de um instalador binário, você pode geralmente fazê-lo através da ferramenta básica de gerenciamento de pacotes que vem com sua distribuição. Se você usar Fedora por exemplo, você pode usar o yum:</span></p>\n<pre style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(238,238,238);font-size: 0.9em;font-family: monospace;"><code>$ sudo yum install git-all</code></span></pre>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Se você usar uma distribuição baseada em Debian como o Ubuntu, use o apt-get:</span></p>\n<pre style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(238,238,238);font-size: 0.9em;font-family: monospace;"><code>$ sudo apt-get install git-all</code></span></pre>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Para mais opções de instruções de como instalar o Git em outros vários sistemas Unix, veja na página do Git, em</span> <a href="http://git-scm.com/download/linux" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://git-scm.com/download/linux</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">.</span></p>\n<h3 style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 16px;font-family: Roboto Slab", "DejaVu Serif", Georgia, "Times New Roman", sans-serif;"><strong>Instalando no Mac</strong></span></h3>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Existem várias maneiras de instalar o Git em um Mac. O mais fácil é provavelmente instalar as ferramentas de linha de comando Xcode. No Mavericks (10,9) ou acima, você pode fazer isso simplesmente rodando</span> <span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;"><em>git</em></span> <span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">a partir do Terminal pela primeira vez. Se você não tiver o Git instalado, ele irá pedir-lhe para instalá-lo.</span></p>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Se você quiser uma versão mais atualizada, você também pode instalá-lo através de um instalador binário. Um instalador OSX Git é mantido e disponível para download no site do Git, pelo</span> <a href="http://git-scm.com/download/mac" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://git-scm.com/download/mac</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">.</span></p>\n<p></p>\n<img src="https://git-scm.com/book/en/v2/images/git-osx-installer.png" alt="Git OS X installer." style="height: auto;width: "/>\n<p></p>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Você também pode instalá-lo como parte do instalador GitHub para Mac. Sua ferramenta GUI Git tem uma opção para instalar as ferramentas de linha de comando. Você pode baixar essa ferramenta a partir da página GitHub para Mac, em</span> <a href="http://mac.github.com/" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://mac.github.com</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">.</span></p>\n<h3 style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 16px;font-family: Roboto Slab", "DejaVu Serif", Georgia, "Times New Roman", sans-serif;"><strong>Instalando no Windows</strong></span></h3>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Há também algumas maneiras de instalar o Git no Windows. A compilação mais oficial está disponível para download no site do Git. Basta ir ao</span> <a href="http://git-scm.com/download/win" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://git-scm.com/download/win</span></a> <span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">e o download começará automaticamente. Note que este é um projeto chamado Git para Windows (também chamado msysGit), que é algo separado do Git; para mais informações sobre isso, vá para</span> <a href="http://msysgit.github.io/" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://msysgit.github.io/</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">.</span></p>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Para fazer uma instalação automatizada, você pode usar o</span> <a href="https://chocolatey.org/packages/git" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">pacote Git do Chocolatey</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">. Note que o pacote Chocolatey é mantido pela comunidade.</span></p>\n<p style="margin-left:0px;"><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">Outra forma fácil de obter Git instalada é através da instalação de GitHub para Windows. O instalador inclui uma versão de linha de comando do Git, bem como a GUI. Ele também funciona bem com o PowerShell, e configura o cache de credenciais sólidas e as devidas configurações CRLF. Vamos saber mais sobre isso um pouco mais tarde, por enquanto basta dizer que estas são coisas que você deveria ter. Você pode baixá-lo da página GitHub para Windows, em</span> <a href="http://windows.github.com/" target="_self"><span style="color: rgb(3,136,166);background-color: transparent;font-size: 14px;font-family: sans-serif;">http://windows.github.com</span></a><span style="color: rgb(78,68,60);background-color: rgb(252,252,250);font-size: 14px;font-family: sans-serif;">.</span>&nbsp;</p>\n	f	2023-10-19 16:05:55.208	2023-10-19 16:06:49.329	\N	\N
1	Dicas para input no React	<p>No React, para alterar o tipo do input desejado, basta informar o tipo usando o atributo <strong>"type"</strong>. Por exemplo:</p>\n<p>Caso, queira que o input seja de uma senha, que os caracteres fiquem escondidos, basta colocar o atributo type como <strong>"password"</strong>.</p>\n<p><span style="background-color: rgb(204,204,204);">&lt;input type="password" name="senha"/&gt;</span></p>\n<p></p>\n<p>Alguns outros tipos de input alem do <span style="color: rgb(3,5,23);background-color: rgb(250,250,250);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;"><strong>"password":</strong></span></p>\n<ul>\n<li><span style="color: rgb(3,5,23);background-color: rgb(250,250,250);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;"><strong>"checkbox": </strong>Caixa de seleção, permite selecionar/desmarcar valores únicos;</span></li>\n<li><span style="color: rgb(3,5,23);background-color: rgb(250,250,250);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;"><strong>"date": </strong>Abre um seletor de data;</span></li>\n<li><span style="color: rgb(3,5,23);background-color: rgb(250,250,250);font-size: 16px;font-family: Poppins, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;"><strong>"email":</strong> semelhante a uma entrada de texto, mas possui parâmetros de validação para email.</span></li>\n</ul>\n	f	2023-10-19 05:28:36.797	2023-10-19 16:55:12.988	\N	\N
\.


--
-- Data for Name: knowledges_author_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knowledges_author_links (id, knowledge_id, user_id, knowledge_order) FROM stdin;
1	1	8	1
2	2	8	2
3	3	8	3
4	4	8	4
\.


--
-- Data for Name: knowledges_stories_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knowledges_stories_links (id, knowledge_id, story_id, story_order) FROM stdin;
7	2	4	1
9	2	5	2
12	2	6	3
13	3	7	1
15	3	8	2
16	4	9	1
18	4	10	2
1	1	1	1
3	1	2	2
6	1	3	3
22	1	11	4
\.


--
-- Data for Name: knowledges_users_can_edit_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knowledges_users_can_edit_links (id, knowledge_id, user_id, user_order) FROM stdin;
\.


--
-- Data for Name: project_user_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_user_roles (id, role, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
5	scrumMaster	2023-10-19 03:02:49.237	2023-10-19 03:02:49.237	\N	\N
8	member	2023-10-19 15:46:28.417	2023-10-19 15:46:28.417	\N	\N
7	member	2023-10-19 04:58:10.527	2023-10-19 15:46:28.471	\N	\N
6	scrumMaster	2023-10-19 03:02:49.351	2023-10-19 15:46:28.506	\N	1
9	scrumMaster	2023-10-19 16:49:42.589	2023-10-19 16:49:42.589	\N	\N
10	scrumMaster	2023-10-19 16:49:42.664	2023-10-24 03:11:15.461	\N	\N
\.


--
-- Data for Name: project_user_roles_project_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_user_roles_project_links (id, project_user_role_id, project_id, project_user_role_order) FROM stdin;
5	5	3	1
6	6	3	2
8	7	3	3
10	8	3	4
13	9	4	1
14	10	4	2
\.


--
-- Data for Name: project_user_roles_user_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.project_user_roles_user_links (id, project_user_role_id, user_id, project_user_role_order) FROM stdin;
5	5	1	1
8	6	8	1
9	7	7	1
11	8	9	1
14	9	1	2
15	10	8	2
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projects (id, name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
3	App de Alarme	2023-10-19 03:02:49.156	2023-10-19 16:51:10.07	\N	\N
4	App de Lista de desejo	2023-10-19 16:49:42.574	2023-10-24 03:11:15.285	\N	\N
\.


--
-- Data for Name: sprints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sprints (id, name, initial_date, final_date, expand, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
4	Criar tela de alarmes	2023-11-02	2023-11-09	t	2023-10-19 15:35:33.355	2023-10-20 23:31:47.715	\N	\N
1	Criar tela de registro	2023-10-19	2023-10-26	t	2023-10-19 03:57:54.953	2023-10-20 23:52:21.114	\N	\N
2	Criar tela de login	2023-10-26	2023-11-02	t	2023-10-19 04:26:50.551	2023-10-19 05:26:39.968	\N	\N
\.


--
-- Data for Name: sprints_project_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sprints_project_links (id, sprint_id, project_id, sprint_order) FROM stdin;
1	1	3	1
2	2	3	2
4	4	3	3
\.


--
-- Data for Name: stories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stories (id, author, date, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Usuario de Teste	2023-10-19 05:28:36.799	2023-10-19 05:28:36.8	2023-10-19 05:28:36.8	\N	\N
2	Renato Teixeira	2023-10-19 05:38:48.078	2023-10-19 05:38:48.079	2023-10-19 05:38:48.079	\N	\N
3	Renato Teixeira	2023-10-19 05:43:11.155	2023-10-19 05:43:11.157	2023-10-19 05:43:11.157	\N	\N
4	Renato Teixeira	2023-10-19 15:53:20.09	2023-10-19 15:53:20.091	2023-10-19 15:53:20.091	\N	\N
5	Renato Teixeira	2023-10-19 15:53:33.735	2023-10-19 15:53:33.736	2023-10-19 15:53:33.736	\N	\N
6	Renato Teixeira	2023-10-19 15:56:47.565	2023-10-19 15:56:47.566	2023-10-19 15:56:47.566	\N	\N
7	Renato Teixeira	2023-10-19 16:02:49.679	2023-10-19 16:02:49.68	2023-10-19 16:02:49.68	\N	\N
8	Renato Teixeira	2023-10-19 16:03:38.53	2023-10-19 16:03:38.532	2023-10-19 16:03:38.532	\N	\N
9	Renato Teixeira	2023-10-19 16:05:55.21	2023-10-19 16:05:55.213	2023-10-19 16:05:55.213	\N	\N
10	Renato Teixeira	2023-10-19 16:06:49.337	2023-10-19 16:06:49.338	2023-10-19 16:06:49.338	\N	\N
11	Renato Teixeira	2023-10-19 16:55:12.997	2023-10-19 16:55:12.998	2023-10-19 16:55:12.998	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
3	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
2	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":false,"configurable":false,"required":true},"email":{"type":"email","unique":true,"minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":5,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"profilePhoto":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"type":{"type":"enumeration","enum":["admin","default"],"default":"default","required":true},"ownerBoards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"author"},"comentaries":{"type":"relation","relation":"oneToMany","target":"api::comentary.comentary","mappedBy":"author"},"responsibleboards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"responsible"},"knowledges":{"type":"relation","relation":"oneToMany","target":"api::knowledge.knowledge","mappedBy":"author"},"projectUserRoles":{"type":"relation","relation":"oneToMany","target":"api::project-user-role.project-user-role","mappedBy":"user"},"activeProject":{"type":"relation","relation":"oneToOne","target":"api::project.project"},"activeSprints":{"type":"relation","relation":"oneToMany","target":"api::active-sprint.active-sprint","mappedBy":"user"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false},"attributes":{"username":{"type":"string","minLength":3,"unique":false,"configurable":false,"required":true},"email":{"type":"email","unique":true,"minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":5,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"profilePhoto":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"type":{"type":"enumeration","enum":["admin","default"],"default":"default","required":true},"ownerBoards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"author"},"comentaries":{"type":"relation","relation":"oneToMany","target":"api::comentary.comentary","mappedBy":"author"},"responsibleboards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"responsible"},"knowledges":{"type":"relation","relation":"oneToMany","target":"api::knowledge.knowledge","mappedBy":"author"},"projectUserRoles":{"type":"relation","relation":"oneToMany","target":"api::project-user-role.project-user-role","mappedBy":"user"},"activeProject":{"type":"relation","relation":"oneToOne","target":"api::project.project"},"activeSprints":{"type":"relation","relation":"oneToMany","target":"api::active-sprint.active-sprint","mappedBy":"user"}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::active-sprint.active-sprint":{"kind":"collectionType","collectionName":"active_sprints","info":{"singularName":"active-sprint","pluralName":"active-sprints","displayName":"ActiveSprint","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"project":{"type":"relation","relation":"oneToOne","target":"api::project.project"},"sprint":{"type":"relation","relation":"oneToOne","target":"api::sprint.sprint"},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"activeSprints"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"active_sprints","info":{"singularName":"active-sprint","pluralName":"active-sprints","displayName":"ActiveSprint","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"project":{"type":"relation","relation":"oneToOne","target":"api::project.project"},"sprint":{"type":"relation","relation":"oneToOne","target":"api::sprint.sprint"},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"activeSprints"}},"kind":"collectionType"},"modelType":"contentType","modelName":"active-sprint","connection":"default","uid":"api::active-sprint.active-sprint","apiName":"active-sprint","globalId":"ActiveSprint","actions":{},"lifecycles":{}},"api::board.board":{"kind":"collectionType","collectionName":"boards","info":{"singularName":"board","pluralName":"boards","displayName":"Board","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"timeEstimated":{"type":"integer","required":true,"min":1},"type":{"type":"enumeration","enum":["task","story","bug"],"required":false,"default":"task"},"description":{"type":"richtext"},"sprint":{"type":"relation","relation":"manyToOne","target":"api::sprint.sprint","inversedBy":"boards"},"responsible":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"responsibleboards"},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"ownerBoards"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"boards"},"status":{"type":"enumeration","enum":["notInitiated","inProgress","concluded"],"default":"notInitiated","required":true},"conclusionDate":{"type":"date","required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"boards","info":{"singularName":"board","pluralName":"boards","displayName":"Board","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"timeEstimated":{"type":"integer","required":true,"min":1},"type":{"type":"enumeration","enum":["task","story","bug"],"required":false,"default":"task"},"description":{"type":"richtext"},"sprint":{"type":"relation","relation":"manyToOne","target":"api::sprint.sprint","inversedBy":"boards"},"responsible":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"responsibleboards"},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"ownerBoards"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"boards"},"status":{"type":"enumeration","enum":["notInitiated","inProgress","concluded"],"default":"notInitiated","required":true},"conclusionDate":{"type":"date","required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"board","connection":"default","uid":"api::board.board","apiName":"board","globalId":"Board","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"knowledges":{"type":"relation","relation":"manyToMany","target":"api::knowledge.knowledge","inversedBy":"categories"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"knowledges":{"type":"relation","relation":"manyToMany","target":"api::knowledge.knowledge","inversedBy":"categories"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"api::comentary.comentary":{"kind":"collectionType","collectionName":"comentaries","info":{"singularName":"comentary","pluralName":"comentaries","displayName":"Comment","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"content":{"type":"richtext"},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comentaries"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"comentaries","info":{"singularName":"comentary","pluralName":"comentaries","displayName":"Comment","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"content":{"type":"richtext"},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"comentaries"}},"kind":"collectionType"},"modelType":"contentType","modelName":"comentary","connection":"default","uid":"api::comentary.comentary","apiName":"comentary","globalId":"Comentary","actions":{},"lifecycles":{}},"api::knowledge.knowledge":{"kind":"collectionType","collectionName":"knowledges","info":{"singularName":"knowledge","pluralName":"knowledges","displayName":"Knowledge","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","mappedBy":"knowledges"},"content":{"type":"richtext","required":false},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"knowledges"},"usersCanEdit":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user"},"stories":{"type":"relation","relation":"oneToMany","target":"api::story.story"},"allUsersCanEdit":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"knowledges","info":{"singularName":"knowledge","pluralName":"knowledges","displayName":"Knowledge","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"title":{"type":"string","required":true},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","mappedBy":"knowledges"},"content":{"type":"richtext","required":false},"author":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"knowledges"},"usersCanEdit":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user"},"stories":{"type":"relation","relation":"oneToMany","target":"api::story.story"},"allUsersCanEdit":{"type":"boolean","default":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"knowledge","connection":"default","uid":"api::knowledge.knowledge","apiName":"knowledge","globalId":"Knowledge","actions":{},"lifecycles":{}},"api::project.project":{"kind":"collectionType","collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"sprints":{"type":"relation","relation":"oneToMany","target":"api::sprint.sprint","mappedBy":"project"},"projectUserRoles":{"type":"relation","relation":"oneToMany","target":"api::project-user-role.project-user-role","mappedBy":"project"},"boards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"project"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true,"unique":true},"sprints":{"type":"relation","relation":"oneToMany","target":"api::sprint.sprint","mappedBy":"project"},"projectUserRoles":{"type":"relation","relation":"oneToMany","target":"api::project-user-role.project-user-role","mappedBy":"project"},"boards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"project"}},"kind":"collectionType"},"modelType":"contentType","modelName":"project","connection":"default","uid":"api::project.project","apiName":"project","globalId":"Project","actions":{},"lifecycles":{}},"api::project-user-role.project-user-role":{"kind":"collectionType","collectionName":"project_user_roles","info":{"singularName":"project-user-role","pluralName":"project-user-roles","displayName":"ProjectUserRole","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"role":{"type":"enumeration","enum":["scrumMaster","productOwner","member"]},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"projectUserRoles"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"projectUserRoles"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"project_user_roles","info":{"singularName":"project-user-role","pluralName":"project-user-roles","displayName":"ProjectUserRole","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"role":{"type":"enumeration","enum":["scrumMaster","productOwner","member"]},"user":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.user","inversedBy":"projectUserRoles"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"projectUserRoles"}},"kind":"collectionType"},"modelType":"contentType","modelName":"project-user-role","connection":"default","uid":"api::project-user-role.project-user-role","apiName":"project-user-role","globalId":"ProjectUserRole","actions":{},"lifecycles":{}},"api::sprint.sprint":{"kind":"collectionType","collectionName":"sprints","info":{"singularName":"sprint","pluralName":"sprints","displayName":"Sprint","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"initialDate":{"type":"date","required":false},"finalDate":{"type":"date","required":false},"boards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"sprint"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"sprints"},"expand":{"type":"boolean","default":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sprints","info":{"singularName":"sprint","pluralName":"sprints","displayName":"Sprint","description":""},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"name":{"type":"string","required":true},"initialDate":{"type":"date","required":false},"finalDate":{"type":"date","required":false},"boards":{"type":"relation","relation":"oneToMany","target":"api::board.board","mappedBy":"sprint"},"project":{"type":"relation","relation":"manyToOne","target":"api::project.project","inversedBy":"sprints"},"expand":{"type":"boolean","default":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"sprint","connection":"default","uid":"api::sprint.sprint","apiName":"sprint","globalId":"Sprint","actions":{},"lifecycles":{}},"api::story.story":{"kind":"collectionType","collectionName":"stories","info":{"singularName":"story","pluralName":"stories","displayName":"Story"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"author":{"type":"string"},"date":{"type":"datetime"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"stories","info":{"singularName":"story","pluralName":"stories","displayName":"Story"},"options":{"draftAndPublish":false},"pluginOptions":{},"attributes":{"author":{"type":"string"},"date":{"type":"datetime"}},"kind":"collectionType"},"modelType":"contentType","modelName":"story","connection":"default","uid":"api::story.story","apiName":"story","globalId":"Story","actions":{},"lifecycles":{}}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::api::active-sprint.active-sprint	{"uid":"api::active-sprint.active-sprint","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"sprint":{"edit":{"label":"sprint","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"sprint","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"user","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","project","sprint","user"],"edit":[[{"name":"project","size":6},{"name":"sprint","size":6}],[{"name":"user","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::api::board.board	{"uid":"api::board.board","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"timeEstimated":{"edit":{"label":"timeEstimated","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timeEstimated","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":false,"sortable":false}},"sprint":{"edit":{"label":"sprint","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"sprint","searchable":true,"sortable":true}},"responsible":{"edit":{"label":"responsible","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"responsible","searchable":true,"sortable":true}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"author","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"conclusionDate":{"edit":{"label":"conclusionDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conclusionDate","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","timeEstimated","type"],"edit":[[{"name":"title","size":6},{"name":"timeEstimated","size":4}],[{"name":"type","size":6}],[{"name":"description","size":12}],[{"name":"sprint","size":6},{"name":"responsible","size":6}],[{"name":"author","size":6},{"name":"project","size":6}],[{"name":"status","size":6},{"name":"conclusionDate","size":4}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::project-user-role.project-user-role	{"uid":"api::project-user-role.project-user-role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"role","searchable":true,"sortable":true}},"user":{"edit":{"label":"user","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"user","searchable":true,"sortable":true}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","role","user","project"],"edit":[[{"name":"role","size":6},{"name":"user","size":6}],[{"name":"project","size":6}]]}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::api::project.project	{"uid":"api::project.project","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"sprints":{"edit":{"label":"sprints","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"sprints","searchable":false,"sortable":false}},"projectUserRoles":{"edit":{"label":"projectUserRoles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"projectUserRoles","searchable":false,"sortable":false}},"boards":{"edit":{"label":"boards","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"boards","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","sprints","projectUserRoles"],"edit":[[{"name":"name","size":6},{"name":"sprints","size":6}],[{"name":"projectUserRoles","size":6},{"name":"boards","size":6}]]}}	object	\N	\N
23	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
27	plugin_i18n_default_locale	"en"	string	\N	\N
11	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::api::story.story	{"uid":"api::story.story","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"author","defaultSortBy":"author","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"author","searchable":true,"sortable":true}},"date":{"edit":{"label":"date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"date","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","author","date","createdAt"],"edit":[[{"name":"author","size":6},{"name":"date","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"profilePhoto":{"edit":{"label":"profilePhoto","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"profilePhoto","searchable":false,"sortable":false}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"ownerBoards":{"edit":{"label":"ownerBoards","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"ownerBoards","searchable":false,"sortable":false}},"comentaries":{"edit":{"label":"comentaries","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"comentaries","searchable":false,"sortable":false}},"responsibleboards":{"edit":{"label":"responsibleboards","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"responsibleboards","searchable":false,"sortable":false}},"knowledges":{"edit":{"label":"knowledges","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"knowledges","searchable":false,"sortable":false}},"projectUserRoles":{"edit":{"label":"projectUserRoles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"projectUserRoles","searchable":false,"sortable":false}},"activeProject":{"edit":{"label":"activeProject","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"activeProject","searchable":true,"sortable":true}},"activeSprints":{"edit":{"label":"activeSprints","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"activeSprints","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}],[{"name":"profilePhoto","size":6},{"name":"type","size":6}],[{"name":"ownerBoards","size":6},{"name":"comentaries","size":6}],[{"name":"responsibleboards","size":6},{"name":"knowledges","size":6}],[{"name":"projectUserRoles","size":6},{"name":"activeProject","size":6}],[{"name":"activeSprints","size":6}]]}}	object	\N	\N
21	plugin_content_manager_configuration_content_types::api::sprint.sprint	{"uid":"api::sprint.sprint","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"initialDate":{"edit":{"label":"initialDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"initialDate","searchable":true,"sortable":true}},"finalDate":{"edit":{"label":"finalDate","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"finalDate","searchable":true,"sortable":true}},"boards":{"edit":{"label":"boards","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"boards","searchable":false,"sortable":false}},"project":{"edit":{"label":"project","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"project","searchable":true,"sortable":true}},"expand":{"edit":{"label":"expand","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expand","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","initialDate","finalDate"],"edit":[[{"name":"name","size":6},{"name":"initialDate","size":4}],[{"name":"finalDate","size":4},{"name":"boards","size":6}],[{"name":"project","size":6},{"name":"expand","size":4}]]}}	object	\N	\N
31	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
24	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
25	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
26	plugin_upload_metrics	{"weeklySchedule":"26 25 17 * * 3","lastWeeklyUpdate":1699464326156}	object	\N	\N
16	plugin_content_manager_configuration_content_types::api::knowledge.knowledge	{"uid":"api::knowledge.knowledge","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"categories","searchable":false,"sortable":false}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"author","searchable":true,"sortable":true}},"usersCanEdit":{"edit":{"label":"usersCanEdit","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"usersCanEdit","searchable":false,"sortable":false}},"stories":{"edit":{"label":"stories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"author"},"list":{"label":"stories","searchable":false,"sortable":false}},"allUsersCanEdit":{"edit":{"label":"allUsersCanEdit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"allUsersCanEdit","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","categories","author"],"edit":[[{"name":"title","size":6},{"name":"categories","size":6}],[{"name":"content","size":12}],[{"name":"author","size":6},{"name":"usersCanEdit","size":6}],[{"name":"stories","size":6},{"name":"allUsersCanEdit","size":4}]]}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::comentary.comentary	{"uid":"api::comentary.comentary","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"author":{"edit":{"label":"author","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"author","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","author","createdAt","updatedAt"],"edit":[[{"name":"content","size":12}],[{"name":"author","size":6}]]}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::api::category.category	{"uid":"api::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"knowledges":{"edit":{"label":"knowledges","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"knowledges","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","knowledges","createdAt"],"edit":[[{"name":"name","size":6},{"name":"knowledges","size":6}]]}}	object	\N	\N
28	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
30	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":"http://191.101.71.251:3000/reset-password","email_confirmation_redirection":"","default_role":"authenticated"}	object	\N	\N
29	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"kamtooloficial@gmail.com"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<a><%= URL %>?code=<%= TOKEN %></a>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
1	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"active_sprints","indexes":[{"name":"active_sprints_created_by_id_fk","columns":["created_by_id"]},{"name":"active_sprints_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"active_sprints_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"active_sprints_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"boards","indexes":[{"name":"boards_created_by_id_fk","columns":["created_by_id"]},{"name":"boards_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"boards_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"boards_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"time_estimated","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conclusion_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories","indexes":[{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comentaries","indexes":[{"name":"comentaries_created_by_id_fk","columns":["created_by_id"]},{"name":"comentaries_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"comentaries_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"comentaries_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"knowledges","indexes":[{"name":"knowledges_created_by_id_fk","columns":["created_by_id"]},{"name":"knowledges_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"knowledges_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"knowledges_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"all_users_can_edit","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"projects","indexes":[{"name":"projects_created_by_id_fk","columns":["created_by_id"]},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"projects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_user_roles","indexes":[{"name":"project_user_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"project_user_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_user_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_user_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"role","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sprints","indexes":[{"name":"sprints_created_by_id_fk","columns":["created_by_id"]},{"name":"sprints_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sprints_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sprints_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"initial_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"final_date","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expand","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"stories","indexes":[{"name":"stories_created_by_id_fk","columns":["created_by_id"]},{"name":"stories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"stories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"stories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"author","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"date","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"],"type":null},{"name":"files_related_morphs_id_column_index","columns":["related_id"],"type":null}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_active_project_links","indexes":[{"name":"up_users_active_project_links_fk","columns":["user_id"]},{"name":"up_users_active_project_links_inv_fk","columns":["project_id"]},{"name":"up_users_active_project_links_unique","columns":["user_id","project_id"],"type":"unique"}],"foreignKeys":[{"name":"up_users_active_project_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_active_project_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"active_sprints_project_links","indexes":[{"name":"active_sprints_project_links_fk","columns":["active_sprint_id"]},{"name":"active_sprints_project_links_inv_fk","columns":["project_id"]},{"name":"active_sprints_project_links_unique","columns":["active_sprint_id","project_id"],"type":"unique"}],"foreignKeys":[{"name":"active_sprints_project_links_fk","columns":["active_sprint_id"],"referencedColumns":["id"],"referencedTable":"active_sprints","onDelete":"CASCADE"},{"name":"active_sprints_project_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"active_sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"active_sprints_sprint_links","indexes":[{"name":"active_sprints_sprint_links_fk","columns":["active_sprint_id"]},{"name":"active_sprints_sprint_links_inv_fk","columns":["sprint_id"]},{"name":"active_sprints_sprint_links_unique","columns":["active_sprint_id","sprint_id"],"type":"unique"}],"foreignKeys":[{"name":"active_sprints_sprint_links_fk","columns":["active_sprint_id"],"referencedColumns":["id"],"referencedTable":"active_sprints","onDelete":"CASCADE"},{"name":"active_sprints_sprint_links_inv_fk","columns":["sprint_id"],"referencedColumns":["id"],"referencedTable":"sprints","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"active_sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"active_sprints_user_links","indexes":[{"name":"active_sprints_user_links_fk","columns":["active_sprint_id"]},{"name":"active_sprints_user_links_inv_fk","columns":["user_id"]},{"name":"active_sprints_user_links_unique","columns":["active_sprint_id","user_id"],"type":"unique"},{"name":"active_sprints_user_links_order_inv_fk","columns":["active_sprint_order"]}],"foreignKeys":[{"name":"active_sprints_user_links_fk","columns":["active_sprint_id"],"referencedColumns":["id"],"referencedTable":"active_sprints","onDelete":"CASCADE"},{"name":"active_sprints_user_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"active_sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"active_sprint_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"boards_sprint_links","indexes":[{"name":"boards_sprint_links_fk","columns":["board_id"]},{"name":"boards_sprint_links_inv_fk","columns":["sprint_id"]},{"name":"boards_sprint_links_unique","columns":["board_id","sprint_id"],"type":"unique"},{"name":"boards_sprint_links_order_inv_fk","columns":["board_order"]}],"foreignKeys":[{"name":"boards_sprint_links_fk","columns":["board_id"],"referencedColumns":["id"],"referencedTable":"boards","onDelete":"CASCADE"},{"name":"boards_sprint_links_inv_fk","columns":["sprint_id"],"referencedColumns":["id"],"referencedTable":"sprints","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"board_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"board_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"boards_responsible_links","indexes":[{"name":"boards_responsible_links_fk","columns":["board_id"]},{"name":"boards_responsible_links_inv_fk","columns":["user_id"]},{"name":"boards_responsible_links_unique","columns":["board_id","user_id"],"type":"unique"},{"name":"boards_responsible_links_order_inv_fk","columns":["board_order"]}],"foreignKeys":[{"name":"boards_responsible_links_fk","columns":["board_id"],"referencedColumns":["id"],"referencedTable":"boards","onDelete":"CASCADE"},{"name":"boards_responsible_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"board_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"board_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"boards_author_links","indexes":[{"name":"boards_author_links_fk","columns":["board_id"]},{"name":"boards_author_links_inv_fk","columns":["user_id"]},{"name":"boards_author_links_unique","columns":["board_id","user_id"],"type":"unique"},{"name":"boards_author_links_order_inv_fk","columns":["board_order"]}],"foreignKeys":[{"name":"boards_author_links_fk","columns":["board_id"],"referencedColumns":["id"],"referencedTable":"boards","onDelete":"CASCADE"},{"name":"boards_author_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"board_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"board_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"boards_project_links","indexes":[{"name":"boards_project_links_fk","columns":["board_id"]},{"name":"boards_project_links_inv_fk","columns":["project_id"]},{"name":"boards_project_links_unique","columns":["board_id","project_id"],"type":"unique"},{"name":"boards_project_links_order_inv_fk","columns":["board_order"]}],"foreignKeys":[{"name":"boards_project_links_fk","columns":["board_id"],"referencedColumns":["id"],"referencedTable":"boards","onDelete":"CASCADE"},{"name":"boards_project_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"board_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"board_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories_knowledges_links","indexes":[{"name":"categories_knowledges_links_fk","columns":["category_id"]},{"name":"categories_knowledges_links_inv_fk","columns":["knowledge_id"]},{"name":"categories_knowledges_links_unique","columns":["category_id","knowledge_id"],"type":"unique"},{"name":"categories_knowledges_links_order_fk","columns":["knowledge_order"]},{"name":"categories_knowledges_links_order_inv_fk","columns":["category_order"]}],"foreignKeys":[{"name":"categories_knowledges_links_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"},{"name":"categories_knowledges_links_inv_fk","columns":["knowledge_id"],"referencedColumns":["id"],"referencedTable":"knowledges","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"knowledge_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"knowledge_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"comentaries_author_links","indexes":[{"name":"comentaries_author_links_fk","columns":["comentary_id"]},{"name":"comentaries_author_links_inv_fk","columns":["user_id"]},{"name":"comentaries_author_links_unique","columns":["comentary_id","user_id"],"type":"unique"},{"name":"comentaries_author_links_order_inv_fk","columns":["comentary_order"]}],"foreignKeys":[{"name":"comentaries_author_links_fk","columns":["comentary_id"],"referencedColumns":["id"],"referencedTable":"comentaries","onDelete":"CASCADE"},{"name":"comentaries_author_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"comentary_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"comentary_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"knowledges_author_links","indexes":[{"name":"knowledges_author_links_fk","columns":["knowledge_id"]},{"name":"knowledges_author_links_inv_fk","columns":["user_id"]},{"name":"knowledges_author_links_unique","columns":["knowledge_id","user_id"],"type":"unique"},{"name":"knowledges_author_links_order_inv_fk","columns":["knowledge_order"]}],"foreignKeys":[{"name":"knowledges_author_links_fk","columns":["knowledge_id"],"referencedColumns":["id"],"referencedTable":"knowledges","onDelete":"CASCADE"},{"name":"knowledges_author_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"knowledge_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"knowledge_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"knowledges_users_can_edit_links","indexes":[{"name":"knowledges_users_can_edit_links_fk","columns":["knowledge_id"]},{"name":"knowledges_users_can_edit_links_inv_fk","columns":["user_id"]},{"name":"knowledges_users_can_edit_links_unique","columns":["knowledge_id","user_id"],"type":"unique"},{"name":"knowledges_users_can_edit_links_order_fk","columns":["user_order"]}],"foreignKeys":[{"name":"knowledges_users_can_edit_links_fk","columns":["knowledge_id"],"referencedColumns":["id"],"referencedTable":"knowledges","onDelete":"CASCADE"},{"name":"knowledges_users_can_edit_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"knowledge_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"knowledges_stories_links","indexes":[{"name":"knowledges_stories_links_fk","columns":["knowledge_id"]},{"name":"knowledges_stories_links_inv_fk","columns":["story_id"]},{"name":"knowledges_stories_links_unique","columns":["knowledge_id","story_id"],"type":"unique"},{"name":"knowledges_stories_links_order_fk","columns":["story_order"]}],"foreignKeys":[{"name":"knowledges_stories_links_fk","columns":["knowledge_id"],"referencedColumns":["id"],"referencedTable":"knowledges","onDelete":"CASCADE"},{"name":"knowledges_stories_links_inv_fk","columns":["story_id"],"referencedColumns":["id"],"referencedTable":"stories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"knowledge_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"story_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"story_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_user_roles_user_links","indexes":[{"name":"project_user_roles_user_links_fk","columns":["project_user_role_id"]},{"name":"project_user_roles_user_links_inv_fk","columns":["user_id"]},{"name":"project_user_roles_user_links_unique","columns":["project_user_role_id","user_id"],"type":"unique"},{"name":"project_user_roles_user_links_order_inv_fk","columns":["project_user_role_order"]}],"foreignKeys":[{"name":"project_user_roles_user_links_fk","columns":["project_user_role_id"],"referencedColumns":["id"],"referencedTable":"project_user_roles","onDelete":"CASCADE"},{"name":"project_user_roles_user_links_inv_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_user_role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_user_role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_user_roles_project_links","indexes":[{"name":"project_user_roles_project_links_fk","columns":["project_user_role_id"]},{"name":"project_user_roles_project_links_inv_fk","columns":["project_id"]},{"name":"project_user_roles_project_links_unique","columns":["project_user_role_id","project_id"],"type":"unique"},{"name":"project_user_roles_project_links_order_inv_fk","columns":["project_user_role_order"]}],"foreignKeys":[{"name":"project_user_roles_project_links_fk","columns":["project_user_role_id"],"referencedColumns":["id"],"referencedTable":"project_user_roles","onDelete":"CASCADE"},{"name":"project_user_roles_project_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_user_role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_user_role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sprints_project_links","indexes":[{"name":"sprints_project_links_fk","columns":["sprint_id"]},{"name":"sprints_project_links_inv_fk","columns":["project_id"]},{"name":"sprints_project_links_unique","columns":["sprint_id","project_id"],"type":"unique"},{"name":"sprints_project_links_order_inv_fk","columns":["sprint_order"]}],"foreignKeys":[{"name":"sprints_project_links_fk","columns":["sprint_id"],"referencedColumns":["id"],"referencedTable":"sprints","onDelete":"CASCADE"},{"name":"sprints_project_links_inv_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sprint_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sprint_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-10-18 17:03:51.484	f43219f8a5bdac83c2f5e797e05e2c86
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-10-18 17:03:53.669	2023-10-18 17:03:53.669	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-10-18 17:03:53.669	2023-10-18 17:03:53.669	\N	\N
3	plugin::users-permissions.auth.connect	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
4	plugin::users-permissions.auth.sendEmailConfirmation	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
5	plugin::users-permissions.auth.emailConfirmation	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
6	plugin::users-permissions.auth.resetPassword	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
7	plugin::users-permissions.auth.register	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
8	plugin::users-permissions.auth.forgotPassword	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
9	plugin::users-permissions.auth.callback	2023-10-18 17:03:53.689	2023-10-18 17:03:53.689	\N	\N
10	api::active-sprint.active-sprint.find	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
11	api::active-sprint.active-sprint.findOne	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
12	api::active-sprint.active-sprint.create	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
13	api::active-sprint.active-sprint.update	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
14	api::board.board.update	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
15	api::board.board.findOne	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
16	api::board.board.find	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
17	api::active-sprint.active-sprint.delete	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
18	api::board.board.create	2023-10-18 17:05:03.18	2023-10-18 17:05:03.18	\N	\N
19	api::category.category.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
20	api::category.category.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
21	api::category.category.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
22	api::board.board.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
23	api::category.category.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
24	api::category.category.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
25	api::knowledge.knowledge.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
26	api::knowledge.knowledge.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
27	api::knowledge.knowledge.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
28	api::knowledge.knowledge.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
29	api::project.project.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
30	api::knowledge.knowledge.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
31	api::project.project.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
32	api::project.project.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
33	api::project.project.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
34	api::project.project.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
35	api::project-user-role.project-user-role.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
36	api::project-user-role.project-user-role.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
37	api::project-user-role.project-user-role.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
38	api::project-user-role.project-user-role.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
39	api::sprint.sprint.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
40	api::sprint.sprint.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
41	api::sprint.sprint.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
42	api::sprint.sprint.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
43	api::project-user-role.project-user-role.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
44	api::sprint.sprint.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
45	plugin::users-permissions.auth.callback	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
46	api::story.story.find	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
47	api::story.story.update	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
48	api::story.story.create	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
49	api::story.story.findOne	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
50	api::story.story.delete	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
51	plugin::users-permissions.auth.resetPassword	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
52	plugin::users-permissions.auth.connect	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
53	plugin::users-permissions.auth.sendEmailConfirmation	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
54	plugin::users-permissions.auth.register	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
55	plugin::users-permissions.auth.forgotPassword	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
56	plugin::users-permissions.auth.emailConfirmation	2023-10-18 17:05:03.181	2023-10-18 17:05:03.181	\N	\N
57	plugin::users-permissions.auth.changePassword	2023-10-18 17:05:22.526	2023-10-18 17:05:22.526	\N	\N
58	plugin::users-permissions.user.create	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
59	plugin::users-permissions.user.update	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
60	plugin::users-permissions.user.find	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
61	plugin::users-permissions.user.findOne	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
62	plugin::users-permissions.user.count	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
63	plugin::users-permissions.user.destroy	2023-10-18 17:24:47.686	2023-10-18 17:24:47.686	\N	\N
64	plugin::users-permissions.user.create	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
65	plugin::users-permissions.user.update	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
66	plugin::users-permissions.user.destroy	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
67	plugin::users-permissions.user.count	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
68	plugin::users-permissions.user.findOne	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
69	plugin::users-permissions.user.find	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
70	plugin::users-permissions.user.me	2023-10-18 17:24:56.141	2023-10-18 17:24:56.141	\N	\N
71	plugin::users-permissions.auth.verifyToken	2023-10-18 15:14:58.75	2023-10-18 15:14:58.75	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	6	2	1
4	9	2	1
5	8	2	1
6	3	2	1
7	5	2	1
8	4	2	1
9	7	2	1
10	12	1	2
11	18	1	2
12	10	1	2
13	13	1	2
14	11	1	2
15	17	1	2
16	24	1	3
17	19	1	3
18	23	1	3
19	15	1	3
20	14	1	3
21	16	1	3
22	21	1	3
23	22	1	3
24	20	1	4
25	26	1	4
26	30	1	4
27	28	1	4
28	31	1	4
29	27	1	4
30	25	1	4
31	29	1	4
32	32	1	5
33	38	1	5
34	33	1	5
35	36	1	6
36	39	1	6
37	37	1	6
38	34	1	6
39	43	1	6
40	35	1	6
41	41	1	7
42	42	1	7
43	40	1	7
44	45	1	7
45	44	1	7
46	46	1	7
47	49	1	7
48	48	1	8
49	50	1	8
50	51	1	8
51	55	1	9
52	53	1	9
53	47	1	9
54	52	1	9
55	56	1	9
56	54	1	9
57	57	2	2
58	58	1	10
59	59	1	10
60	60	1	10
61	61	1	10
62	62	1	11
63	63	1	11
64	64	2	3
65	69	2	3
66	66	2	3
67	65	2	3
68	67	2	3
69	70	2	3
70	68	2	4
71	71	2	5
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-10-18 17:03:53.654	2023-10-18 17:25:55.003	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-10-18 17:03:53.66	2023-10-18 15:18:05.774	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
7	Leonardo Medeiros Prado	leonardo_medeiros_prado@hotmail.com	local	$2a$10$BD8Bjlofjq8tt5gmG9L8G.zwdUnKpGNDcaYHh2ezCkxlbkcaPPSnK	\N	\N	t	f	default	2023-10-18 16:15:17.344	2023-10-19 03:57:17.702	\N	\N
9	Camila Medeiros Prado	ca.medeiros678@gmail.com	local	$2a$10$xlQBZ7re1yXjiMHQQglZbOQgmsjMroPaN2mboDIopfzSUbsOlz0L6	\N	\N	f	f	default	2023-10-19 15:46:20.187	2023-10-19 15:46:20.187	1	1
10	Carolina	carolina@visumdigital.com	local	$2a$10$KKlRFr00P.xkQhi8QwxwSuIwwFGVQezQ86Pc218jsXInGlT3N/WIC	\N	\N	t	f	default	2023-10-20 17:52:12.084	2023-10-20 17:52:12.084	\N	\N
1	admin	admin@admin.com	local	$2a$10$U8zgDGEGzenYLLa1PH3Qr.vDBHAapN6QRok4zJr3VeyjKKipU.k9C	\N	\N	f	f	admin	2023-10-18 17:23:42.609	2023-10-20 19:14:01.907	1	1
8	Renato Teixeira	renatoteixeira@gmail.com	local	$2a$10$dHg4xXkNUbXdIGIP9W883OWJQL5Jjla0GcAge4C/UtkZYnPjpxaxS	\N	\N	t	f	default	2023-10-19 04:56:05.921	2023-10-24 03:13:10.119	\N	1
\.


--
-- Data for Name: up_users_active_project_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_active_project_links (id, user_id, project_id) FROM stdin;
3	7	3
6	8	3
7	1	3
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
1	1	1	1
7	7	1	2
8	8	1	3
9	9	1	4
10	10	1	5
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: active_sprints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_sprints_id_seq', 3, true);


--
-- Name: active_sprints_project_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_sprints_project_links_id_seq', 3, true);


--
-- Name: active_sprints_sprint_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_sprints_sprint_links_id_seq', 9, true);


--
-- Name: active_sprints_user_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.active_sprints_user_links_id_seq', 3, true);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 179, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 179, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: boards_author_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_author_links_id_seq', 56, true);


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_id_seq', 31, true);


--
-- Name: boards_project_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_project_links_id_seq', 246, true);


--
-- Name: boards_responsible_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_responsible_links_id_seq', 56, true);


--
-- Name: boards_sprint_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.boards_sprint_links_id_seq', 176, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- Name: categories_knowledges_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categories_knowledges_links_id_seq', 16, true);


--
-- Name: comentaries_author_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentaries_author_links_id_seq', 1, false);


--
-- Name: comentaries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentaries_id_seq', 1, false);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: knowledges_author_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knowledges_author_links_id_seq', 4, true);


--
-- Name: knowledges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knowledges_id_seq', 4, true);


--
-- Name: knowledges_stories_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knowledges_stories_links_id_seq', 22, true);


--
-- Name: knowledges_users_can_edit_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knowledges_users_can_edit_links_id_seq', 4, true);


--
-- Name: project_user_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_user_roles_id_seq', 10, true);


--
-- Name: project_user_roles_project_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_user_roles_project_links_id_seq', 15, true);


--
-- Name: project_user_roles_user_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.project_user_roles_user_links_id_seq', 16, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 4, true);


--
-- Name: sprints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sprints_id_seq', 5, true);


--
-- Name: sprints_project_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sprints_project_links_id_seq', 5, true);


--
-- Name: stories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stories_id_seq', 11, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 31, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 1, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 71, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 71, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_active_project_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_active_project_links_id_seq', 7, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_id_seq', 10, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 10, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: active_sprints active_sprints_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints
    ADD CONSTRAINT active_sprints_pkey PRIMARY KEY (id);


--
-- Name: active_sprints_project_links active_sprints_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_project_links
    ADD CONSTRAINT active_sprints_project_links_pkey PRIMARY KEY (id);


--
-- Name: active_sprints_project_links active_sprints_project_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_project_links
    ADD CONSTRAINT active_sprints_project_links_unique UNIQUE (active_sprint_id, project_id);


--
-- Name: active_sprints_sprint_links active_sprints_sprint_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_sprint_links
    ADD CONSTRAINT active_sprints_sprint_links_pkey PRIMARY KEY (id);


--
-- Name: active_sprints_sprint_links active_sprints_sprint_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_sprint_links
    ADD CONSTRAINT active_sprints_sprint_links_unique UNIQUE (active_sprint_id, sprint_id);


--
-- Name: active_sprints_user_links active_sprints_user_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_user_links
    ADD CONSTRAINT active_sprints_user_links_pkey PRIMARY KEY (id);


--
-- Name: active_sprints_user_links active_sprints_user_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_user_links
    ADD CONSTRAINT active_sprints_user_links_unique UNIQUE (active_sprint_id, user_id);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: boards_author_links boards_author_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_author_links
    ADD CONSTRAINT boards_author_links_pkey PRIMARY KEY (id);


--
-- Name: boards_author_links boards_author_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_author_links
    ADD CONSTRAINT boards_author_links_unique UNIQUE (board_id, user_id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: boards_project_links boards_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_project_links
    ADD CONSTRAINT boards_project_links_pkey PRIMARY KEY (id);


--
-- Name: boards_project_links boards_project_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_project_links
    ADD CONSTRAINT boards_project_links_unique UNIQUE (board_id, project_id);


--
-- Name: boards_responsible_links boards_responsible_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_responsible_links
    ADD CONSTRAINT boards_responsible_links_pkey PRIMARY KEY (id);


--
-- Name: boards_responsible_links boards_responsible_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_responsible_links
    ADD CONSTRAINT boards_responsible_links_unique UNIQUE (board_id, user_id);


--
-- Name: boards_sprint_links boards_sprint_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_sprint_links
    ADD CONSTRAINT boards_sprint_links_pkey PRIMARY KEY (id);


--
-- Name: boards_sprint_links boards_sprint_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_sprint_links
    ADD CONSTRAINT boards_sprint_links_unique UNIQUE (board_id, sprint_id);


--
-- Name: categories_knowledges_links categories_knowledges_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_knowledges_links
    ADD CONSTRAINT categories_knowledges_links_pkey PRIMARY KEY (id);


--
-- Name: categories_knowledges_links categories_knowledges_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_knowledges_links
    ADD CONSTRAINT categories_knowledges_links_unique UNIQUE (category_id, knowledge_id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comentaries_author_links comentaries_author_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries_author_links
    ADD CONSTRAINT comentaries_author_links_pkey PRIMARY KEY (id);


--
-- Name: comentaries_author_links comentaries_author_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries_author_links
    ADD CONSTRAINT comentaries_author_links_unique UNIQUE (comentary_id, user_id);


--
-- Name: comentaries comentaries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries
    ADD CONSTRAINT comentaries_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: knowledges_author_links knowledges_author_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_author_links
    ADD CONSTRAINT knowledges_author_links_pkey PRIMARY KEY (id);


--
-- Name: knowledges_author_links knowledges_author_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_author_links
    ADD CONSTRAINT knowledges_author_links_unique UNIQUE (knowledge_id, user_id);


--
-- Name: knowledges knowledges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges
    ADD CONSTRAINT knowledges_pkey PRIMARY KEY (id);


--
-- Name: knowledges_stories_links knowledges_stories_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_stories_links
    ADD CONSTRAINT knowledges_stories_links_pkey PRIMARY KEY (id);


--
-- Name: knowledges_stories_links knowledges_stories_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_stories_links
    ADD CONSTRAINT knowledges_stories_links_unique UNIQUE (knowledge_id, story_id);


--
-- Name: knowledges_users_can_edit_links knowledges_users_can_edit_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_users_can_edit_links
    ADD CONSTRAINT knowledges_users_can_edit_links_pkey PRIMARY KEY (id);


--
-- Name: knowledges_users_can_edit_links knowledges_users_can_edit_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_users_can_edit_links
    ADD CONSTRAINT knowledges_users_can_edit_links_unique UNIQUE (knowledge_id, user_id);


--
-- Name: project_user_roles project_user_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles
    ADD CONSTRAINT project_user_roles_pkey PRIMARY KEY (id);


--
-- Name: project_user_roles_project_links project_user_roles_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_project_links
    ADD CONSTRAINT project_user_roles_project_links_pkey PRIMARY KEY (id);


--
-- Name: project_user_roles_project_links project_user_roles_project_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_project_links
    ADD CONSTRAINT project_user_roles_project_links_unique UNIQUE (project_user_role_id, project_id);


--
-- Name: project_user_roles_user_links project_user_roles_user_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_user_links
    ADD CONSTRAINT project_user_roles_user_links_pkey PRIMARY KEY (id);


--
-- Name: project_user_roles_user_links project_user_roles_user_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_user_links
    ADD CONSTRAINT project_user_roles_user_links_unique UNIQUE (project_user_role_id, user_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: sprints sprints_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints
    ADD CONSTRAINT sprints_pkey PRIMARY KEY (id);


--
-- Name: sprints_project_links sprints_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints_project_links
    ADD CONSTRAINT sprints_project_links_pkey PRIMARY KEY (id);


--
-- Name: sprints_project_links sprints_project_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints_project_links
    ADD CONSTRAINT sprints_project_links_unique UNIQUE (sprint_id, project_id);


--
-- Name: stories stories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users_active_project_links up_users_active_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_active_project_links
    ADD CONSTRAINT up_users_active_project_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_active_project_links up_users_active_project_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_active_project_links
    ADD CONSTRAINT up_users_active_project_links_unique UNIQUE (user_id, project_id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: active_sprints_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_created_by_id_fk ON public.active_sprints USING btree (created_by_id);


--
-- Name: active_sprints_project_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_project_links_fk ON public.active_sprints_project_links USING btree (active_sprint_id);


--
-- Name: active_sprints_project_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_project_links_inv_fk ON public.active_sprints_project_links USING btree (project_id);


--
-- Name: active_sprints_sprint_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_sprint_links_fk ON public.active_sprints_sprint_links USING btree (active_sprint_id);


--
-- Name: active_sprints_sprint_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_sprint_links_inv_fk ON public.active_sprints_sprint_links USING btree (sprint_id);


--
-- Name: active_sprints_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_updated_by_id_fk ON public.active_sprints USING btree (updated_by_id);


--
-- Name: active_sprints_user_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_user_links_fk ON public.active_sprints_user_links USING btree (active_sprint_id);


--
-- Name: active_sprints_user_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_user_links_inv_fk ON public.active_sprints_user_links USING btree (user_id);


--
-- Name: active_sprints_user_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX active_sprints_user_links_order_inv_fk ON public.active_sprints_user_links USING btree (active_sprint_order);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: boards_author_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_author_links_fk ON public.boards_author_links USING btree (board_id);


--
-- Name: boards_author_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_author_links_inv_fk ON public.boards_author_links USING btree (user_id);


--
-- Name: boards_author_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_author_links_order_inv_fk ON public.boards_author_links USING btree (board_order);


--
-- Name: boards_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_created_by_id_fk ON public.boards USING btree (created_by_id);


--
-- Name: boards_project_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_project_links_fk ON public.boards_project_links USING btree (board_id);


--
-- Name: boards_project_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_project_links_inv_fk ON public.boards_project_links USING btree (project_id);


--
-- Name: boards_project_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_project_links_order_inv_fk ON public.boards_project_links USING btree (board_order);


--
-- Name: boards_responsible_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_responsible_links_fk ON public.boards_responsible_links USING btree (board_id);


--
-- Name: boards_responsible_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_responsible_links_inv_fk ON public.boards_responsible_links USING btree (user_id);


--
-- Name: boards_responsible_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_responsible_links_order_inv_fk ON public.boards_responsible_links USING btree (board_order);


--
-- Name: boards_sprint_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_sprint_links_fk ON public.boards_sprint_links USING btree (board_id);


--
-- Name: boards_sprint_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_sprint_links_inv_fk ON public.boards_sprint_links USING btree (sprint_id);


--
-- Name: boards_sprint_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_sprint_links_order_inv_fk ON public.boards_sprint_links USING btree (board_order);


--
-- Name: boards_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX boards_updated_by_id_fk ON public.boards USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_knowledges_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_knowledges_links_fk ON public.categories_knowledges_links USING btree (category_id);


--
-- Name: categories_knowledges_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_knowledges_links_inv_fk ON public.categories_knowledges_links USING btree (knowledge_id);


--
-- Name: categories_knowledges_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_knowledges_links_order_fk ON public.categories_knowledges_links USING btree (knowledge_order);


--
-- Name: categories_knowledges_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_knowledges_links_order_inv_fk ON public.categories_knowledges_links USING btree (category_order);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: comentaries_author_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comentaries_author_links_fk ON public.comentaries_author_links USING btree (comentary_id);


--
-- Name: comentaries_author_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comentaries_author_links_inv_fk ON public.comentaries_author_links USING btree (user_id);


--
-- Name: comentaries_author_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comentaries_author_links_order_inv_fk ON public.comentaries_author_links USING btree (comentary_order);


--
-- Name: comentaries_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comentaries_created_by_id_fk ON public.comentaries USING btree (created_by_id);


--
-- Name: comentaries_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comentaries_updated_by_id_fk ON public.comentaries USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: knowledges_author_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_author_links_fk ON public.knowledges_author_links USING btree (knowledge_id);


--
-- Name: knowledges_author_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_author_links_inv_fk ON public.knowledges_author_links USING btree (user_id);


--
-- Name: knowledges_author_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_author_links_order_inv_fk ON public.knowledges_author_links USING btree (knowledge_order);


--
-- Name: knowledges_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_created_by_id_fk ON public.knowledges USING btree (created_by_id);


--
-- Name: knowledges_stories_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_stories_links_fk ON public.knowledges_stories_links USING btree (knowledge_id);


--
-- Name: knowledges_stories_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_stories_links_inv_fk ON public.knowledges_stories_links USING btree (story_id);


--
-- Name: knowledges_stories_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_stories_links_order_fk ON public.knowledges_stories_links USING btree (story_order);


--
-- Name: knowledges_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_updated_by_id_fk ON public.knowledges USING btree (updated_by_id);


--
-- Name: knowledges_users_can_edit_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_users_can_edit_links_fk ON public.knowledges_users_can_edit_links USING btree (knowledge_id);


--
-- Name: knowledges_users_can_edit_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_users_can_edit_links_inv_fk ON public.knowledges_users_can_edit_links USING btree (user_id);


--
-- Name: knowledges_users_can_edit_links_order_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX knowledges_users_can_edit_links_order_fk ON public.knowledges_users_can_edit_links USING btree (user_order);


--
-- Name: project_user_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_created_by_id_fk ON public.project_user_roles USING btree (created_by_id);


--
-- Name: project_user_roles_project_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_project_links_fk ON public.project_user_roles_project_links USING btree (project_user_role_id);


--
-- Name: project_user_roles_project_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_project_links_inv_fk ON public.project_user_roles_project_links USING btree (project_id);


--
-- Name: project_user_roles_project_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_project_links_order_inv_fk ON public.project_user_roles_project_links USING btree (project_user_role_order);


--
-- Name: project_user_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_updated_by_id_fk ON public.project_user_roles USING btree (updated_by_id);


--
-- Name: project_user_roles_user_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_user_links_fk ON public.project_user_roles_user_links USING btree (project_user_role_id);


--
-- Name: project_user_roles_user_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_user_links_inv_fk ON public.project_user_roles_user_links USING btree (user_id);


--
-- Name: project_user_roles_user_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX project_user_roles_user_links_order_inv_fk ON public.project_user_roles_user_links USING btree (project_user_role_order);


--
-- Name: projects_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_created_by_id_fk ON public.projects USING btree (created_by_id);


--
-- Name: projects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX projects_updated_by_id_fk ON public.projects USING btree (updated_by_id);


--
-- Name: sprints_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sprints_created_by_id_fk ON public.sprints USING btree (created_by_id);


--
-- Name: sprints_project_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sprints_project_links_fk ON public.sprints_project_links USING btree (sprint_id);


--
-- Name: sprints_project_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sprints_project_links_inv_fk ON public.sprints_project_links USING btree (project_id);


--
-- Name: sprints_project_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sprints_project_links_order_inv_fk ON public.sprints_project_links USING btree (sprint_order);


--
-- Name: sprints_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sprints_updated_by_id_fk ON public.sprints USING btree (updated_by_id);


--
-- Name: stories_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stories_created_by_id_fk ON public.stories USING btree (created_by_id);


--
-- Name: stories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stories_updated_by_id_fk ON public.stories USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_active_project_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_active_project_links_fk ON public.up_users_active_project_links USING btree (user_id);


--
-- Name: up_users_active_project_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_active_project_links_inv_fk ON public.up_users_active_project_links USING btree (project_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: active_sprints active_sprints_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints
    ADD CONSTRAINT active_sprints_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: active_sprints_project_links active_sprints_project_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_project_links
    ADD CONSTRAINT active_sprints_project_links_fk FOREIGN KEY (active_sprint_id) REFERENCES public.active_sprints(id) ON DELETE CASCADE;


--
-- Name: active_sprints_project_links active_sprints_project_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_project_links
    ADD CONSTRAINT active_sprints_project_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: active_sprints_sprint_links active_sprints_sprint_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_sprint_links
    ADD CONSTRAINT active_sprints_sprint_links_fk FOREIGN KEY (active_sprint_id) REFERENCES public.active_sprints(id) ON DELETE CASCADE;


--
-- Name: active_sprints_sprint_links active_sprints_sprint_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_sprint_links
    ADD CONSTRAINT active_sprints_sprint_links_inv_fk FOREIGN KEY (sprint_id) REFERENCES public.sprints(id) ON DELETE CASCADE;


--
-- Name: active_sprints active_sprints_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints
    ADD CONSTRAINT active_sprints_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: active_sprints_user_links active_sprints_user_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_user_links
    ADD CONSTRAINT active_sprints_user_links_fk FOREIGN KEY (active_sprint_id) REFERENCES public.active_sprints(id) ON DELETE CASCADE;


--
-- Name: active_sprints_user_links active_sprints_user_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.active_sprints_user_links
    ADD CONSTRAINT active_sprints_user_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: boards_author_links boards_author_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_author_links
    ADD CONSTRAINT boards_author_links_fk FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: boards_author_links boards_author_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_author_links
    ADD CONSTRAINT boards_author_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: boards boards_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: boards_project_links boards_project_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_project_links
    ADD CONSTRAINT boards_project_links_fk FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: boards_project_links boards_project_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_project_links
    ADD CONSTRAINT boards_project_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: boards_responsible_links boards_responsible_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_responsible_links
    ADD CONSTRAINT boards_responsible_links_fk FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: boards_responsible_links boards_responsible_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_responsible_links
    ADD CONSTRAINT boards_responsible_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: boards_sprint_links boards_sprint_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_sprint_links
    ADD CONSTRAINT boards_sprint_links_fk FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: boards_sprint_links boards_sprint_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards_sprint_links
    ADD CONSTRAINT boards_sprint_links_inv_fk FOREIGN KEY (sprint_id) REFERENCES public.sprints(id) ON DELETE CASCADE;


--
-- Name: boards boards_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories_knowledges_links categories_knowledges_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_knowledges_links
    ADD CONSTRAINT categories_knowledges_links_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories_knowledges_links categories_knowledges_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories_knowledges_links
    ADD CONSTRAINT categories_knowledges_links_inv_fk FOREIGN KEY (knowledge_id) REFERENCES public.knowledges(id) ON DELETE CASCADE;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comentaries_author_links comentaries_author_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries_author_links
    ADD CONSTRAINT comentaries_author_links_fk FOREIGN KEY (comentary_id) REFERENCES public.comentaries(id) ON DELETE CASCADE;


--
-- Name: comentaries_author_links comentaries_author_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries_author_links
    ADD CONSTRAINT comentaries_author_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: comentaries comentaries_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries
    ADD CONSTRAINT comentaries_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: comentaries comentaries_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentaries
    ADD CONSTRAINT comentaries_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: knowledges_author_links knowledges_author_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_author_links
    ADD CONSTRAINT knowledges_author_links_fk FOREIGN KEY (knowledge_id) REFERENCES public.knowledges(id) ON DELETE CASCADE;


--
-- Name: knowledges_author_links knowledges_author_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_author_links
    ADD CONSTRAINT knowledges_author_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: knowledges knowledges_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges
    ADD CONSTRAINT knowledges_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: knowledges_stories_links knowledges_stories_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_stories_links
    ADD CONSTRAINT knowledges_stories_links_fk FOREIGN KEY (knowledge_id) REFERENCES public.knowledges(id) ON DELETE CASCADE;


--
-- Name: knowledges_stories_links knowledges_stories_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_stories_links
    ADD CONSTRAINT knowledges_stories_links_inv_fk FOREIGN KEY (story_id) REFERENCES public.stories(id) ON DELETE CASCADE;


--
-- Name: knowledges knowledges_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges
    ADD CONSTRAINT knowledges_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: knowledges_users_can_edit_links knowledges_users_can_edit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_users_can_edit_links
    ADD CONSTRAINT knowledges_users_can_edit_links_fk FOREIGN KEY (knowledge_id) REFERENCES public.knowledges(id) ON DELETE CASCADE;


--
-- Name: knowledges_users_can_edit_links knowledges_users_can_edit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledges_users_can_edit_links
    ADD CONSTRAINT knowledges_users_can_edit_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: project_user_roles project_user_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles
    ADD CONSTRAINT project_user_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_user_roles_project_links project_user_roles_project_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_project_links
    ADD CONSTRAINT project_user_roles_project_links_fk FOREIGN KEY (project_user_role_id) REFERENCES public.project_user_roles(id) ON DELETE CASCADE;


--
-- Name: project_user_roles_project_links project_user_roles_project_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_project_links
    ADD CONSTRAINT project_user_roles_project_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_user_roles project_user_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles
    ADD CONSTRAINT project_user_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_user_roles_user_links project_user_roles_user_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_user_links
    ADD CONSTRAINT project_user_roles_user_links_fk FOREIGN KEY (project_user_role_id) REFERENCES public.project_user_roles(id) ON DELETE CASCADE;


--
-- Name: project_user_roles_user_links project_user_roles_user_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.project_user_roles_user_links
    ADD CONSTRAINT project_user_roles_user_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: projects projects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects projects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sprints sprints_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints
    ADD CONSTRAINT sprints_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: sprints_project_links sprints_project_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints_project_links
    ADD CONSTRAINT sprints_project_links_fk FOREIGN KEY (sprint_id) REFERENCES public.sprints(id) ON DELETE CASCADE;


--
-- Name: sprints_project_links sprints_project_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints_project_links
    ADD CONSTRAINT sprints_project_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: sprints sprints_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sprints
    ADD CONSTRAINT sprints_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stories stories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: stories stories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stories
    ADD CONSTRAINT stories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_active_project_links up_users_active_project_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_active_project_links
    ADD CONSTRAINT up_users_active_project_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_active_project_links up_users_active_project_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_active_project_links
    ADD CONSTRAINT up_users_active_project_links_inv_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

