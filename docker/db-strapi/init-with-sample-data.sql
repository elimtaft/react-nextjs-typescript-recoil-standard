/* strapi db */
GRANT CREATE ON SCHEMA __STRAPI_DB_SCHEMA__ TO __STRAPI_DB_USER__;
GRANT USAGE ON SCHEMA __STRAPI_DB_SCHEMA__ TO __STRAPI_DB_USER__;


--
-- PostgreSQL database dump
--

-- Dumped from database version 13.8 (Debian 13.8-1.pgdg110+1)
-- Dumped by pg_dump version 13.8 (Debian 13.8-1.pgdg110+1)

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.admin_permissions (
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


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_permissions OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_permissions_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.admin_permissions_id_seq OWNED BY __STRAPI_DB_SCHEMA__.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.admin_permissions_role_links (
    permission_id integer,
    role_id integer,
    id integer NOT NULL,
    permission_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_permissions_role_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_permissions_role_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.admin_permissions_role_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_roles OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_roles_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.admin_roles_id_seq OWNED BY __STRAPI_DB_SCHEMA__.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.admin_users (
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


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_users OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_users_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.admin_users_id_seq OWNED BY __STRAPI_DB_SCHEMA__.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.admin_users_roles_links (
    user_id integer,
    role_id integer,
    id integer NOT NULL,
    role_order integer,
    user_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_users_roles_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.admin_users_roles_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.admin_users_roles_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.admin_users_roles_links.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.files (
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
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    folder_path character varying(255)
);


ALTER TABLE __STRAPI_DB_SCHEMA__.files OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.files_folder_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.files_folder_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.files_folder_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.files_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.files_id_seq OWNED BY __STRAPI_DB_SCHEMA__.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer,
    id integer NOT NULL
);


ALTER TABLE __STRAPI_DB_SCHEMA__.files_related_morphs OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.files_related_morphs_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.files_related_morphs_id_seq OWNED BY __STRAPI_DB_SCHEMA__.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.i18n_locale OWNER TO __STRAPI_DB_USER__;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.i18n_locale_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.i18n_locale_id_seq OWNED BY __STRAPI_DB_SCHEMA__.i18n_locale.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.pages (
    id integer NOT NULL,
    title character varying(255),
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255)
);


ALTER TABLE __STRAPI_DB_SCHEMA__.pages OWNER TO __STRAPI_DB_USER__;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.pages_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.pages_id_seq OWNED BY __STRAPI_DB_SCHEMA__.pages.id;


--
-- Name: slugs; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.slugs (
    id integer NOT NULL,
    slug text,
    count integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.slugs OWNER TO __STRAPI_DB_USER__;

--
-- Name: slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.slugs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.slugs_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.slugs_id_seq OWNED BY __STRAPI_DB_SCHEMA__.slugs.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_tokens OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_api_tokens_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_api_tokens_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_core_store_settings OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_core_store_settings_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_core_store_settings_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_database_schema OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_database_schema_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_database_schema_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_migrations OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_migrations_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_migrations_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_migrations.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_webhooks OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.strapi_webhooks_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.strapi_webhooks_id_seq OWNED BY __STRAPI_DB_SCHEMA__.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.up_permissions OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.up_permissions_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.up_permissions_id_seq OWNED BY __STRAPI_DB_SCHEMA__.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.up_permissions_role_links (
    permission_id integer,
    role_id integer,
    id integer NOT NULL,
    permission_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.up_permissions_role_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.up_permissions_role_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.up_permissions_role_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.up_roles OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.up_roles_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.up_roles_id_seq OWNED BY __STRAPI_DB_SCHEMA__.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.up_users OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.up_users_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.up_users_id_seq OWNED BY __STRAPI_DB_SCHEMA__.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.up_users_role_links (
    user_id integer,
    role_id integer,
    id integer NOT NULL,
    user_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.up_users_role_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.up_users_role_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.up_users_role_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.upload_folders OWNER TO __STRAPI_DB_USER__;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.upload_folders_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.upload_folders_id_seq OWNED BY __STRAPI_DB_SCHEMA__.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE TABLE __STRAPI_DB_SCHEMA__.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order integer
);


ALTER TABLE __STRAPI_DB_SCHEMA__.upload_folders_parent_links OWNER TO __STRAPI_DB_USER__;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE SEQUENCE __STRAPI_DB_SCHEMA__.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE __STRAPI_DB_SCHEMA__.upload_folders_parent_links_id_seq OWNER TO __STRAPI_DB_USER__;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER SEQUENCE __STRAPI_DB_SCHEMA__.upload_folders_parent_links_id_seq OWNED BY __STRAPI_DB_SCHEMA__.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_roles ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.admin_users_roles_links_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_folder_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.i18n_locale ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.i18n_locale_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.pages ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.pages_id_seq'::regclass);


--
-- Name: slugs id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.slugs ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.slugs_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_roles ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('__STRAPI_DB_SCHEMA__.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::upload.read	\N	{}	[]	2022-08-16 09:33:34.581	2022-08-16 09:33:34.581	\N	\N
2	plugin::upload.assets.create	\N	{}	[]	2022-08-16 09:33:34.586	2022-08-16 09:33:34.586	\N	\N
3	plugin::upload.assets.update	\N	{}	[]	2022-08-16 09:33:34.591	2022-08-16 09:33:34.591	\N	\N
4	plugin::upload.assets.download	\N	{}	[]	2022-08-16 09:33:34.595	2022-08-16 09:33:34.595	\N	\N
5	plugin::upload.assets.copy-link	\N	{}	[]	2022-08-16 09:33:34.604	2022-08-16 09:33:34.604	\N	\N
6	plugin::upload.read	\N	{}	["admin::is-creator"]	2022-08-16 09:33:34.609	2022-08-16 09:33:34.609	\N	\N
7	plugin::upload.assets.create	\N	{}	[]	2022-08-16 09:33:34.614	2022-08-16 09:33:34.614	\N	\N
8	plugin::upload.assets.update	\N	{}	["admin::is-creator"]	2022-08-16 09:33:34.618	2022-08-16 09:33:34.618	\N	\N
9	plugin::upload.assets.download	\N	{}	[]	2022-08-16 09:33:34.623	2022-08-16 09:33:34.623	\N	\N
10	plugin::upload.assets.copy-link	\N	{}	[]	2022-08-16 09:33:34.627	2022-08-16 09:33:34.627	\N	\N
11	plugin::content-manager.explorer.create	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-08-16 09:33:34.656	2022-08-16 09:33:34.656	\N	\N
12	plugin::content-manager.explorer.read	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-08-16 09:33:34.661	2022-08-16 09:33:34.661	\N	\N
13	plugin::content-manager.explorer.update	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2022-08-16 09:33:34.666	2022-08-16 09:33:34.666	\N	\N
14	plugin::content-manager.explorer.delete	plugin::users-permissions.user	{}	[]	2022-08-16 09:33:34.671	2022-08-16 09:33:34.671	\N	\N
15	plugin::content-manager.single-types.configure-view	\N	{}	[]	2022-08-16 09:33:34.676	2022-08-16 09:33:34.676	\N	\N
16	plugin::content-manager.collection-types.configure-view	\N	{}	[]	2022-08-16 09:33:34.681	2022-08-16 09:33:34.681	\N	\N
17	plugin::content-manager.components.configure-layout	\N	{}	[]	2022-08-16 09:33:34.686	2022-08-16 09:33:34.686	\N	\N
18	plugin::content-type-builder.read	\N	{}	[]	2022-08-16 09:33:34.69	2022-08-16 09:33:34.69	\N	\N
19	plugin::email.settings.read	\N	{}	[]	2022-08-16 09:33:34.695	2022-08-16 09:33:34.695	\N	\N
20	plugin::upload.read	\N	{}	[]	2022-08-16 09:33:34.701	2022-08-16 09:33:34.701	\N	\N
21	plugin::upload.assets.create	\N	{}	[]	2022-08-16 09:33:34.706	2022-08-16 09:33:34.706	\N	\N
22	plugin::upload.assets.update	\N	{}	[]	2022-08-16 09:33:34.711	2022-08-16 09:33:34.711	\N	\N
23	plugin::upload.assets.download	\N	{}	[]	2022-08-16 09:33:34.716	2022-08-16 09:33:34.716	\N	\N
24	plugin::upload.assets.copy-link	\N	{}	[]	2022-08-16 09:33:34.72	2022-08-16 09:33:34.72	\N	\N
25	plugin::upload.settings.read	\N	{}	[]	2022-08-16 09:33:34.727	2022-08-16 09:33:34.727	\N	\N
26	plugin::i18n.locale.create	\N	{}	[]	2022-08-16 09:33:34.735	2022-08-16 09:33:34.735	\N	\N
27	plugin::i18n.locale.read	\N	{}	[]	2022-08-16 09:33:34.74	2022-08-16 09:33:34.74	\N	\N
28	plugin::i18n.locale.update	\N	{}	[]	2022-08-16 09:33:34.745	2022-08-16 09:33:34.745	\N	\N
29	plugin::i18n.locale.delete	\N	{}	[]	2022-08-16 09:33:34.749	2022-08-16 09:33:34.749	\N	\N
30	plugin::users-permissions.roles.create	\N	{}	[]	2022-08-16 09:33:34.756	2022-08-16 09:33:34.756	\N	\N
31	plugin::users-permissions.roles.read	\N	{}	[]	2022-08-16 09:33:34.762	2022-08-16 09:33:34.762	\N	\N
32	plugin::users-permissions.roles.update	\N	{}	[]	2022-08-16 09:33:34.767	2022-08-16 09:33:34.767	\N	\N
33	plugin::users-permissions.roles.delete	\N	{}	[]	2022-08-16 09:33:34.772	2022-08-16 09:33:34.772	\N	\N
34	plugin::users-permissions.providers.read	\N	{}	[]	2022-08-16 09:33:34.776	2022-08-16 09:33:34.776	\N	\N
35	plugin::users-permissions.providers.update	\N	{}	[]	2022-08-16 09:33:34.78	2022-08-16 09:33:34.78	\N	\N
36	plugin::users-permissions.email-templates.read	\N	{}	[]	2022-08-16 09:33:34.786	2022-08-16 09:33:34.786	\N	\N
37	plugin::users-permissions.email-templates.update	\N	{}	[]	2022-08-16 09:33:34.799	2022-08-16 09:33:34.799	\N	\N
38	plugin::users-permissions.advanced-settings.read	\N	{}	[]	2022-08-16 09:33:34.808	2022-08-16 09:33:34.808	\N	\N
39	plugin::users-permissions.advanced-settings.update	\N	{}	[]	2022-08-16 09:33:34.818	2022-08-16 09:33:34.818	\N	\N
40	admin::marketplace.read	\N	{}	[]	2022-08-16 09:33:34.825	2022-08-16 09:33:34.825	\N	\N
41	admin::marketplace.plugins.install	\N	{}	[]	2022-08-16 09:33:34.833	2022-08-16 09:33:34.833	\N	\N
42	admin::marketplace.plugins.uninstall	\N	{}	[]	2022-08-16 09:33:34.84	2022-08-16 09:33:34.84	\N	\N
43	admin::webhooks.create	\N	{}	[]	2022-08-16 09:33:34.847	2022-08-16 09:33:34.847	\N	\N
44	admin::webhooks.read	\N	{}	[]	2022-08-16 09:33:34.862	2022-08-16 09:33:34.862	\N	\N
45	admin::webhooks.update	\N	{}	[]	2022-08-16 09:33:34.868	2022-08-16 09:33:34.868	\N	\N
46	admin::webhooks.delete	\N	{}	[]	2022-08-16 09:33:34.873	2022-08-16 09:33:34.873	\N	\N
47	admin::users.create	\N	{}	[]	2022-08-16 09:33:34.879	2022-08-16 09:33:34.879	\N	\N
48	admin::users.read	\N	{}	[]	2022-08-16 09:33:34.884	2022-08-16 09:33:34.884	\N	\N
49	admin::users.update	\N	{}	[]	2022-08-16 09:33:34.888	2022-08-16 09:33:34.888	\N	\N
50	admin::users.delete	\N	{}	[]	2022-08-16 09:33:34.893	2022-08-16 09:33:34.893	\N	\N
51	admin::roles.create	\N	{}	[]	2022-08-16 09:33:34.898	2022-08-16 09:33:34.898	\N	\N
52	admin::roles.read	\N	{}	[]	2022-08-16 09:33:34.902	2022-08-16 09:33:34.902	\N	\N
53	admin::roles.update	\N	{}	[]	2022-08-16 09:33:34.907	2022-08-16 09:33:34.907	\N	\N
54	admin::roles.delete	\N	{}	[]	2022-08-16 09:33:34.912	2022-08-16 09:33:34.912	\N	\N
55	admin::api-tokens.create	\N	{}	[]	2022-08-16 09:33:34.916	2022-08-16 09:33:34.916	\N	\N
56	admin::api-tokens.read	\N	{}	[]	2022-08-16 09:33:34.921	2022-08-16 09:33:34.921	\N	\N
57	admin::api-tokens.update	\N	{}	[]	2022-08-16 09:33:34.926	2022-08-16 09:33:34.926	\N	\N
58	admin::api-tokens.delete	\N	{}	[]	2022-08-16 09:33:34.931	2022-08-16 09:33:34.931	\N	\N
62	plugin::content-manager.explorer.delete	api::page.page	{}	[]	2022-08-16 09:37:35.856	2022-08-16 09:37:35.856	\N	\N
63	plugin::content-manager.explorer.publish	api::page.page	{}	[]	2022-08-16 09:37:35.863	2022-08-16 09:37:35.863	\N	\N
70	plugin::content-manager.explorer.create	api::page.page	{"fields": ["title", "content", "slug"]}	[]	2022-08-16 10:32:11.102	2022-08-16 10:32:11.102	\N	\N
71	plugin::content-manager.explorer.read	api::page.page	{"fields": ["title", "content", "slug"]}	[]	2022-08-16 10:32:11.108	2022-08-16 10:32:11.108	\N	\N
72	plugin::content-manager.explorer.update	api::page.page	{"fields": ["title", "content", "slug"]}	[]	2022-08-16 10:32:11.113	2022-08-16 10:32:11.113	\N	\N
73	plugin::upload.configure-view	\N	{}	[]	2023-02-15 17:55:19.718	2023-02-15 17:55:19.718	\N	\N
74	admin::api-tokens.access	\N	{}	[]	2023-02-15 17:55:19.725	2023-02-15 17:55:19.725	\N	\N
75	admin::api-tokens.regenerate	\N	{}	[]	2023-02-15 17:55:19.73	2023-02-15 17:55:19.73	\N	\N
76	admin::project-settings.update	\N	{}	[]	2023-02-15 17:55:19.735	2023-02-15 17:55:19.735	\N	\N
77	admin::project-settings.read	\N	{}	[]	2023-02-15 17:55:19.742	2023-02-15 17:55:19.742	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.admin_permissions_role_links (permission_id, role_id, id, permission_order) FROM stdin;
1	2	1	\N
2	2	2	\N
3	2	3	\N
4	2	4	\N
5	2	5	\N
6	3	6	\N
7	3	7	\N
8	3	8	\N
9	3	9	\N
10	3	10	\N
11	1	11	\N
12	1	12	\N
13	1	13	\N
14	1	14	\N
15	1	15	\N
16	1	16	\N
17	1	17	\N
18	1	18	\N
19	1	19	\N
20	1	20	\N
21	1	21	\N
22	1	22	\N
23	1	23	\N
24	1	24	\N
25	1	25	\N
26	1	26	\N
27	1	27	\N
28	1	28	\N
29	1	29	\N
30	1	30	\N
31	1	31	\N
32	1	32	\N
33	1	33	\N
34	1	34	\N
35	1	35	\N
36	1	36	\N
37	1	37	\N
38	1	38	\N
39	1	39	\N
40	1	40	\N
41	1	41	\N
42	1	42	\N
43	1	43	\N
44	1	44	\N
45	1	45	\N
46	1	46	\N
47	1	47	\N
48	1	48	\N
49	1	49	\N
50	1	50	\N
51	1	51	\N
52	1	52	\N
53	1	53	\N
54	1	54	\N
55	1	55	\N
56	1	56	\N
57	1	57	\N
58	1	58	\N
62	1	59	\N
63	1	60	\N
70	1	61	\N
71	1	62	\N
72	1	63	\N
73	1	64	1
74	1	65	2
75	1	66	3
76	1	67	4
77	1	68	5
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2022-08-16 09:33:34.567	2022-08-16 09:33:34.567	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2022-08-16 09:33:34.572	2022-08-16 09:33:34.572	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2022-08-16 09:33:34.576	2022-08-16 09:33:34.576	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Strapi	Admin	\N	admin@some-domain.com	$2a$10$DSLqoKyf9/nwDH6Mt/6t6eEhJZrqoaos0aYYOfQlMCgfYinBpsxTC	\N	\N	t	f	\N	2022-08-16 09:34:15.197	2023-02-15 17:56:19.269	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.admin_users_roles_links (user_id, role_id, id, role_order, user_order) FROM stdin;
1	1	1	1	\N
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, created_at, updated_at, created_by_id, updated_by_id, folder_path) FROM stdin;
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.files_related_morphs (file_id, related_id, related_type, field, "order", id) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2022-08-16 09:33:34.462	2022-08-16 09:33:34.462	\N	\N
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.pages (id, title, content, created_at, updated_at, published_at, created_by_id, updated_by_id, slug) FROM stdin;
1	Strapi Sample Homepage Content	Congratulations! You are seeing this message because this Next.JS page successfully obtained information from Strapi.\n\n![Congratulations](https://www.publicdomainpictures.net/pictures/230000/nahled/congratulations-milkshake-text.jpg)\n \n	2022-08-16 09:39:13.829	2023-02-15 17:57:05.727	2022-08-16 09:42:29.619	1	1	strapi-sample-homepage-content
\.


--
-- Data for Name: slugs; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.slugs (id, slug, count, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_api_tokens (id, name, description, type, access_key, created_at, updated_at, created_by_id, updated_by_id, last_used_at, expires_at, lifespan) FROM stdin;
1	Next.JS App	API Key used by the Next.JS App front-end to communicate with Strapi. Only use in server-side calls; never expose this key in the browser!	full-access	6a57725acde48aeef81b5098389bb2f7b381608529e7f4051f1dee8be4f7116ef74009987b99b3e49c8f83742a12fabe25f476aa42238d67bc906b6a91326245	2022-08-17 11:06:42.434	2023-02-15 17:55:25.926	\N	\N	2023-02-15 17:55:25.926	\N	\N
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
4	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
6	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
7	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
16	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object	\N	\N
11	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
12	plugin_i18n_default_locale	"en"	string	\N	\N
13	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object	\N	\N
14	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
15	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"content":{"type":"richtext"},"slug":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"content":{"type":"richtext"},"slug":{"type":"string"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::slugify.slug":{"kind":"collectionType","collectionName":"slugs","info":{"singularName":"slug","pluralName":"slugs","displayName":"slug"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"slug":{"type":"text"},"count":{"type":"integer"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"slugs","info":{"singularName":"slug","pluralName":"slugs","displayName":"slug"},"options":{"draftAndPublish":false,"comment":""},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"slug":{"type":"text"},"count":{"type":"integer"}},"kind":"collectionType"},"modelType":"contentType","modelName":"slug","connection":"default","uid":"plugin::slugify.slug","plugin":"slugify","globalId":"SlugifySlug"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"}}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}],[{"name":"roles","size":6}]]}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::plugin::slugify.slug	{"uid":"plugin::slugify.slug","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"count":{"edit":{"label":"count","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"count","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","slug","count","createdAt"],"edit":[[{"name":"slug","size":6},{"name":"count","size":4}]]}}	object	\N	\N
2	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::page.page	{"uid":"api::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","createdAt","updatedAt","title"],"edit":[[{"name":"title","size":6}],[{"name":"slug","size":6}],[{"name":"content","size":12}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
21	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
22	plugin_upload_metrics	{"weeklySchedule":"19 0 18 * * 3","lastWeeklyUpdate":1676484019024}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_database_schema (id, schema, "time", hash) FROM stdin;
4	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"slugs","indexes":[{"name":"slugs_created_by_id_fk","columns":["created_by_id"]},{"name":"slugs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"slugs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"slugs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"slug","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"count","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-02-15 17:55:19.302	4658543ec4d03a03999c1d3746a521eb
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.connect	2022-08-16 09:33:34.525	2022-08-16 09:33:34.525	\N	\N
2	plugin::users-permissions.user.me	2022-08-16 09:33:34.525	2022-08-16 09:33:34.525	\N	\N
5	plugin::users-permissions.auth.callback	2022-08-16 09:33:34.532	2022-08-16 09:33:34.532	\N	\N
6	plugin::users-permissions.auth.connect	2022-08-16 09:33:34.532	2022-08-16 09:33:34.532	\N	\N
9	plugin::users-permissions.auth.register	2022-08-16 09:33:34.532	2022-08-16 09:33:34.532	\N	\N
11	plugin::users-permissions.user.me	2022-08-16 09:33:34.532	2022-08-16 09:33:34.532	\N	\N
12	api::page.page.find	2022-08-16 09:39:57.475	2022-08-16 09:39:57.475	\N	\N
13	api::page.page.findOne	2022-08-16 09:39:57.475	2022-08-16 09:39:57.475	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.up_permissions_role_links (permission_id, role_id, id, permission_order) FROM stdin;
1	1	1	\N
2	1	2	\N
5	2	3	\N
6	2	4	\N
9	2	5	\N
11	2	6	\N
12	2	7	\N
13	2	8	\N
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2022-08-16 09:33:34.514	2022-08-16 09:33:34.514	\N	\N
2	Public	Default role given to unauthenticated user.	public	2022-08-16 09:33:34.518	2022-08-16 09:39:57.464	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.up_users_role_links (user_id, role_id, id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: __STRAPI_DB_USER__
--

COPY __STRAPI_DB_SCHEMA__.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.admin_permissions_id_seq', 77, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.admin_permissions_role_links_id_seq', 68, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.admin_users_roles_links_id_seq', 2, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.files_id_seq', 1, false);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.files_related_morphs_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.i18n_locale_id_seq', 1, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.pages_id_seq', 4, true);


--
-- Name: slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.slugs_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_api_tokens_id_seq', 1, true);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_core_store_settings_id_seq', 22, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_database_schema_id_seq', 4, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.up_permissions_id_seq', 13, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.up_permissions_role_links_id_seq', 8, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: __STRAPI_DB_USER__
--

SELECT pg_catalog.setval('__STRAPI_DB_SCHEMA__.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: slugs slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.slugs
    ADD CONSTRAINT slugs_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_permissions_created_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_permissions_role_links_fk ON __STRAPI_DB_SCHEMA__.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_permissions_role_links_inv_fk ON __STRAPI_DB_SCHEMA__.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_permissions_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_roles_created_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_roles_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_created_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_roles_links_fk ON __STRAPI_DB_SCHEMA__.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_roles_links_inv_fk ON __STRAPI_DB_SCHEMA__.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_roles_links_order_fk ON __STRAPI_DB_SCHEMA__.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX admin_users_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.admin_users USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_created_by_id_fk ON __STRAPI_DB_SCHEMA__.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_folder_links_fk ON __STRAPI_DB_SCHEMA__.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_folder_links_inv_fk ON __STRAPI_DB_SCHEMA__.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_folder_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_related_morphs_fk ON __STRAPI_DB_SCHEMA__.files_related_morphs USING btree (file_id);


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX files_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX i18n_locale_created_by_id_fk ON __STRAPI_DB_SCHEMA__.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX i18n_locale_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.i18n_locale USING btree (updated_by_id);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX pages_created_by_id_fk ON __STRAPI_DB_SCHEMA__.pages USING btree (created_by_id);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX pages_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.pages USING btree (updated_by_id);


--
-- Name: slugs_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX slugs_created_by_id_fk ON __STRAPI_DB_SCHEMA__.slugs USING btree (created_by_id);


--
-- Name: slugs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX slugs_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.slugs USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON __STRAPI_DB_SCHEMA__.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON __STRAPI_DB_SCHEMA__.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_permissions_created_by_id_fk ON __STRAPI_DB_SCHEMA__.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_permissions_role_links_fk ON __STRAPI_DB_SCHEMA__.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_permissions_role_links_inv_fk ON __STRAPI_DB_SCHEMA__.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_permissions_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_roles_created_by_id_fk ON __STRAPI_DB_SCHEMA__.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_roles_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_users_created_by_id_fk ON __STRAPI_DB_SCHEMA__.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_users_role_links_fk ON __STRAPI_DB_SCHEMA__.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_users_role_links_inv_fk ON __STRAPI_DB_SCHEMA__.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_users_role_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX up_users_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_created_at_index ON __STRAPI_DB_SCHEMA__.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_ext_index ON __STRAPI_DB_SCHEMA__.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_folder_path_index ON __STRAPI_DB_SCHEMA__.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_name_index ON __STRAPI_DB_SCHEMA__.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_size_index ON __STRAPI_DB_SCHEMA__.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_files_updated_at_index ON __STRAPI_DB_SCHEMA__.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_folders_created_by_id_fk ON __STRAPI_DB_SCHEMA__.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_folders_parent_links_fk ON __STRAPI_DB_SCHEMA__.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_folders_parent_links_inv_fk ON __STRAPI_DB_SCHEMA__.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON __STRAPI_DB_SCHEMA__.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: __STRAPI_DB_USER__
--

CREATE INDEX upload_folders_updated_by_id_fk ON __STRAPI_DB_SCHEMA__.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES __STRAPI_DB_SCHEMA__.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES __STRAPI_DB_SCHEMA__.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES __STRAPI_DB_SCHEMA__.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: slugs slugs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.slugs
    ADD CONSTRAINT slugs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: slugs slugs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.slugs
    ADD CONSTRAINT slugs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES __STRAPI_DB_SCHEMA__.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES __STRAPI_DB_SCHEMA__.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES __STRAPI_DB_SCHEMA__.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES __STRAPI_DB_SCHEMA__.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES __STRAPI_DB_SCHEMA__.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES __STRAPI_DB_SCHEMA__.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES __STRAPI_DB_SCHEMA__.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES __STRAPI_DB_SCHEMA__.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: __STRAPI_DB_USER__
--

ALTER TABLE ONLY __STRAPI_DB_SCHEMA__.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES __STRAPI_DB_SCHEMA__.admin_users(id) ON DELETE SET NULL;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO __STRAPI_DB_USER__;


--
-- PostgreSQL database dump complete
--

