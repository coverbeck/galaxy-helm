--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 10.6 (Debian 10.6-1.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: api_keys; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.api_keys (
    id integer NOT NULL,
    create_time timestamp without time zone,
    user_id integer,
    key character varying(32)
);


ALTER TABLE public.api_keys OWNER TO galaxydbuser;

--
-- Name: api_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.api_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_keys_id_seq OWNER TO galaxydbuser;

--
-- Name: api_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.api_keys_id_seq OWNED BY public.api_keys.id;


--
-- Name: cleanup_event; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event (
    id integer NOT NULL,
    create_time timestamp without time zone,
    message character varying(1024)
);


ALTER TABLE public.cleanup_event OWNER TO galaxydbuser;

--
-- Name: cleanup_event_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_dataset_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    dataset_id integer
);


ALTER TABLE public.cleanup_event_dataset_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_dataset_association_id_seq OWNED BY public.cleanup_event_dataset_association.id;


--
-- Name: cleanup_event_hda_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_hda_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    hda_id integer
);


ALTER TABLE public.cleanup_event_hda_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_hda_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_hda_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_hda_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_hda_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_hda_association_id_seq OWNED BY public.cleanup_event_hda_association.id;


--
-- Name: cleanup_event_history_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_history_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    history_id integer
);


ALTER TABLE public.cleanup_event_history_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_history_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_history_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_history_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_history_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_history_association_id_seq OWNED BY public.cleanup_event_history_association.id;


--
-- Name: cleanup_event_icda_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_icda_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    icda_id integer
);


ALTER TABLE public.cleanup_event_icda_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_icda_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_icda_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_icda_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_icda_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_icda_association_id_seq OWNED BY public.cleanup_event_icda_association.id;


--
-- Name: cleanup_event_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_id_seq OWNED BY public.cleanup_event.id;


--
-- Name: cleanup_event_ldda_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_ldda_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    ldda_id integer
);


ALTER TABLE public.cleanup_event_ldda_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_ldda_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_ldda_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_ldda_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_ldda_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_ldda_association_id_seq OWNED BY public.cleanup_event_ldda_association.id;


--
-- Name: cleanup_event_library_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_library_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    library_id integer
);


ALTER TABLE public.cleanup_event_library_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_library_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_library_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_library_association_id_seq OWNED BY public.cleanup_event_library_association.id;


--
-- Name: cleanup_event_library_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_library_dataset_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    library_dataset_id integer
);


ALTER TABLE public.cleanup_event_library_dataset_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_library_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_library_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_library_dataset_association_id_seq OWNED BY public.cleanup_event_library_dataset_association.id;


--
-- Name: cleanup_event_library_folder_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_library_folder_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    library_folder_id integer
);


ALTER TABLE public.cleanup_event_library_folder_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_folder_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_library_folder_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_library_folder_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_library_folder_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_library_folder_association_id_seq OWNED BY public.cleanup_event_library_folder_association.id;


--
-- Name: cleanup_event_metadata_file_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_metadata_file_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    metadata_file_id integer
);


ALTER TABLE public.cleanup_event_metadata_file_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_metadata_file_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_metadata_file_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_metadata_file_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_metadata_file_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_metadata_file_association_id_seq OWNED BY public.cleanup_event_metadata_file_association.id;


--
-- Name: cleanup_event_user_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cleanup_event_user_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    cleanup_event_id integer,
    user_id integer
);


ALTER TABLE public.cleanup_event_user_association OWNER TO galaxydbuser;

--
-- Name: cleanup_event_user_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cleanup_event_user_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cleanup_event_user_association_id_seq OWNER TO galaxydbuser;

--
-- Name: cleanup_event_user_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cleanup_event_user_association_id_seq OWNED BY public.cleanup_event_user_association.id;


--
-- Name: cloudauthz; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.cloudauthz (
    id integer NOT NULL,
    user_id integer,
    provider character varying(255),
    config bytea,
    authn_id integer,
    tokens bytea,
    last_update timestamp without time zone,
    last_activity timestamp without time zone,
    description text,
    create_time timestamp without time zone
);


ALTER TABLE public.cloudauthz OWNER TO galaxydbuser;

--
-- Name: cloudauthz_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.cloudauthz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cloudauthz_id_seq OWNER TO galaxydbuser;

--
-- Name: cloudauthz_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.cloudauthz_id_seq OWNED BY public.cloudauthz.id;


--
-- Name: custos_authnz_token; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.custos_authnz_token (
    id integer NOT NULL,
    user_id integer,
    external_user_id character varying(64),
    provider character varying(255),
    access_token text,
    id_token text,
    refresh_token text,
    expiration_time timestamp without time zone,
    refresh_expiration_time timestamp without time zone
);


ALTER TABLE public.custos_authnz_token OWNER TO galaxydbuser;

--
-- Name: custos_authnz_token_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.custos_authnz_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custos_authnz_token_id_seq OWNER TO galaxydbuser;

--
-- Name: custos_authnz_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.custos_authnz_token_id_seq OWNED BY public.custos_authnz_token.id;


--
-- Name: data_manager_history_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.data_manager_history_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    history_id integer,
    user_id integer
);


ALTER TABLE public.data_manager_history_association OWNER TO galaxydbuser;

--
-- Name: data_manager_history_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.data_manager_history_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_manager_history_association_id_seq OWNER TO galaxydbuser;

--
-- Name: data_manager_history_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.data_manager_history_association_id_seq OWNED BY public.data_manager_history_association.id;


--
-- Name: data_manager_job_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.data_manager_job_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    job_id integer,
    data_manager_id text
);


ALTER TABLE public.data_manager_job_association OWNER TO galaxydbuser;

--
-- Name: data_manager_job_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.data_manager_job_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_manager_job_association_id_seq OWNER TO galaxydbuser;

--
-- Name: data_manager_job_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.data_manager_job_association_id_seq OWNED BY public.data_manager_job_association.id;


--
-- Name: dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    state character varying(64),
    deleted boolean,
    purged boolean,
    purgable boolean,
    external_filename text,
    _extra_files_path text,
    file_size numeric(15,0),
    total_size numeric(15,0),
    object_store_id character varying(255),
    uuid character(32)
);


ALTER TABLE public.dataset OWNER TO galaxydbuser;

--
-- Name: dataset_collection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_collection (
    id integer NOT NULL,
    collection_type character varying(255) NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    populated_state character varying(64) DEFAULT 'ok'::character varying NOT NULL,
    populated_state_message text,
    element_count integer
);


ALTER TABLE public.dataset_collection OWNER TO galaxydbuser;

--
-- Name: dataset_collection_element; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_collection_element (
    id integer NOT NULL,
    dataset_collection_id integer NOT NULL,
    hda_id integer,
    ldda_id integer,
    child_collection_id integer,
    element_index integer NOT NULL,
    element_identifier character varying(255) NOT NULL
);


ALTER TABLE public.dataset_collection_element OWNER TO galaxydbuser;

--
-- Name: dataset_collection_element_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_collection_element_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_collection_element_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_collection_element_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_collection_element_id_seq OWNED BY public.dataset_collection_element.id;


--
-- Name: dataset_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_collection_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_collection_id_seq OWNED BY public.dataset_collection.id;


--
-- Name: dataset_hash; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_hash (
    id integer NOT NULL,
    dataset_id integer,
    hash_function text,
    hash_value text,
    extra_files_path text
);


ALTER TABLE public.dataset_hash OWNER TO galaxydbuser;

--
-- Name: dataset_hash_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_hash_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_hash_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_hash_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_hash_id_seq OWNED BY public.dataset_hash.id;


--
-- Name: dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_id_seq OWNED BY public.dataset.id;


--
-- Name: dataset_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    dataset_id integer,
    role_id integer
);


ALTER TABLE public.dataset_permissions OWNER TO galaxydbuser;

--
-- Name: dataset_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_permissions_id_seq OWNED BY public.dataset_permissions.id;


--
-- Name: dataset_source; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_source (
    id integer NOT NULL,
    dataset_id integer,
    source_uri text,
    extra_files_path text,
    transform bytea
);


ALTER TABLE public.dataset_source OWNER TO galaxydbuser;

--
-- Name: dataset_source_hash; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_source_hash (
    id integer NOT NULL,
    dataset_source_id integer,
    hash_function text,
    hash_value text
);


ALTER TABLE public.dataset_source_hash OWNER TO galaxydbuser;

--
-- Name: dataset_source_hash_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_source_hash_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_source_hash_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_source_hash_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_source_hash_id_seq OWNED BY public.dataset_source_hash.id;


--
-- Name: dataset_source_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_source_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_source_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_source_id_seq OWNED BY public.dataset_source.id;


--
-- Name: dataset_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dataset_tag_association (
    id integer NOT NULL,
    dataset_id integer,
    tag_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.dataset_tag_association OWNER TO galaxydbuser;

--
-- Name: dataset_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dataset_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dataset_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: dataset_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dataset_tag_association_id_seq OWNED BY public.dataset_tag_association.id;


--
-- Name: default_history_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.default_history_permissions (
    id integer NOT NULL,
    history_id integer,
    action text,
    role_id integer
);


ALTER TABLE public.default_history_permissions OWNER TO galaxydbuser;

--
-- Name: default_history_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.default_history_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.default_history_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: default_history_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.default_history_permissions_id_seq OWNED BY public.default_history_permissions.id;


--
-- Name: default_quota_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.default_quota_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    type character varying(32),
    quota_id integer
);


ALTER TABLE public.default_quota_association OWNER TO galaxydbuser;

--
-- Name: default_quota_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.default_quota_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.default_quota_association_id_seq OWNER TO galaxydbuser;

--
-- Name: default_quota_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.default_quota_association_id_seq OWNED BY public.default_quota_association.id;


--
-- Name: default_user_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.default_user_permissions (
    id integer NOT NULL,
    user_id integer,
    action text,
    role_id integer
);


ALTER TABLE public.default_user_permissions OWNER TO galaxydbuser;

--
-- Name: default_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.default_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.default_user_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: default_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.default_user_permissions_id_seq OWNED BY public.default_user_permissions.id;


--
-- Name: deferred_job; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.deferred_job (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    state character varying(64),
    plugin character varying(128),
    params bytea
);


ALTER TABLE public.deferred_job OWNER TO galaxydbuser;

--
-- Name: deferred_job_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.deferred_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deferred_job_id_seq OWNER TO galaxydbuser;

--
-- Name: deferred_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.deferred_job_id_seq OWNED BY public.deferred_job.id;


--
-- Name: dynamic_tool; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.dynamic_tool (
    id integer NOT NULL,
    uuid character(32),
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_id character varying(255),
    tool_version character varying(255),
    tool_format character varying(255),
    tool_path character varying(255),
    tool_directory character varying(255),
    hidden boolean,
    active boolean,
    value bytea
);


ALTER TABLE public.dynamic_tool OWNER TO galaxydbuser;

--
-- Name: dynamic_tool_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.dynamic_tool_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dynamic_tool_id_seq OWNER TO galaxydbuser;

--
-- Name: dynamic_tool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.dynamic_tool_id_seq OWNED BY public.dynamic_tool.id;


--
-- Name: event; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.event (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    history_id integer,
    user_id integer,
    message character varying(1024),
    session_id integer,
    tool_id character varying(255)
);


ALTER TABLE public.event OWNER TO galaxydbuser;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO galaxydbuser;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;


--
-- Name: extended_metadata; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.extended_metadata (
    id integer NOT NULL,
    data bytea
);


ALTER TABLE public.extended_metadata OWNER TO galaxydbuser;

--
-- Name: extended_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.extended_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extended_metadata_id_seq OWNER TO galaxydbuser;

--
-- Name: extended_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.extended_metadata_id_seq OWNED BY public.extended_metadata.id;


--
-- Name: extended_metadata_index; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.extended_metadata_index (
    id integer NOT NULL,
    extended_metadata_id integer,
    path character varying(255),
    value text
);


ALTER TABLE public.extended_metadata_index OWNER TO galaxydbuser;

--
-- Name: extended_metadata_index_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.extended_metadata_index_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extended_metadata_index_id_seq OWNER TO galaxydbuser;

--
-- Name: extended_metadata_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.extended_metadata_index_id_seq OWNED BY public.extended_metadata_index.id;


--
-- Name: external_service; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.external_service (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    description text,
    version character varying(255),
    form_definition_id integer,
    form_values_id integer,
    deleted boolean,
    external_service_type_id character varying(255)
);


ALTER TABLE public.external_service OWNER TO galaxydbuser;

--
-- Name: external_service_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.external_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.external_service_id_seq OWNER TO galaxydbuser;

--
-- Name: external_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.external_service_id_seq OWNED BY public.external_service.id;


--
-- Name: form_definition; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.form_definition (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    "desc" text,
    form_definition_current_id integer NOT NULL,
    fields bytea,
    type character varying(255),
    layout bytea
);


ALTER TABLE public.form_definition OWNER TO galaxydbuser;

--
-- Name: form_definition_current; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.form_definition_current (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    latest_form_id integer,
    deleted boolean
);


ALTER TABLE public.form_definition_current OWNER TO galaxydbuser;

--
-- Name: form_definition_current_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.form_definition_current_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_definition_current_id_seq OWNER TO galaxydbuser;

--
-- Name: form_definition_current_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.form_definition_current_id_seq OWNED BY public.form_definition_current.id;


--
-- Name: form_definition_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.form_definition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_definition_id_seq OWNER TO galaxydbuser;

--
-- Name: form_definition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.form_definition_id_seq OWNED BY public.form_definition.id;


--
-- Name: form_values; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.form_values (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    form_definition_id integer,
    content bytea
);


ALTER TABLE public.form_values OWNER TO galaxydbuser;

--
-- Name: form_values_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.form_values_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.form_values_id_seq OWNER TO galaxydbuser;

--
-- Name: form_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.form_values_id_seq OWNED BY public.form_values.id;


--
-- Name: galaxy_group; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.galaxy_group (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255),
    deleted boolean
);


ALTER TABLE public.galaxy_group OWNER TO galaxydbuser;

--
-- Name: galaxy_group_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.galaxy_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_group_id_seq OWNER TO galaxydbuser;

--
-- Name: galaxy_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.galaxy_group_id_seq OWNED BY public.galaxy_group.id;


--
-- Name: galaxy_session; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.galaxy_session (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer,
    remote_host character varying(255),
    remote_addr character varying(255),
    referer text,
    current_history_id integer,
    session_key character varying(255),
    is_valid boolean,
    prev_session_id integer,
    disk_usage numeric(15,0),
    last_action timestamp without time zone
);


ALTER TABLE public.galaxy_session OWNER TO galaxydbuser;

--
-- Name: galaxy_session_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.galaxy_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_session_id_seq OWNER TO galaxydbuser;

--
-- Name: galaxy_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.galaxy_session_id_seq OWNED BY public.galaxy_session.id;


--
-- Name: galaxy_session_to_history; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.galaxy_session_to_history (
    id integer NOT NULL,
    create_time timestamp without time zone,
    session_id integer,
    history_id integer
);


ALTER TABLE public.galaxy_session_to_history OWNER TO galaxydbuser;

--
-- Name: galaxy_session_to_history_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.galaxy_session_to_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_session_to_history_id_seq OWNER TO galaxydbuser;

--
-- Name: galaxy_session_to_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.galaxy_session_to_history_id_seq OWNED BY public.galaxy_session_to_history.id;


--
-- Name: galaxy_user; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.galaxy_user (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    external boolean,
    deleted boolean,
    purged boolean,
    username character varying(255),
    form_values_id integer,
    disk_usage numeric(15,0),
    activation_token character varying(64),
    active boolean,
    last_password_change timestamp without time zone
);


ALTER TABLE public.galaxy_user OWNER TO galaxydbuser;

--
-- Name: galaxy_user_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.galaxy_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_user_id_seq OWNER TO galaxydbuser;

--
-- Name: galaxy_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.galaxy_user_id_seq OWNED BY public.galaxy_user.id;


--
-- Name: galaxy_user_openid; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.galaxy_user_openid (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    session_id integer,
    user_id integer,
    openid text,
    provider character varying(255)
);


ALTER TABLE public.galaxy_user_openid OWNER TO galaxydbuser;

--
-- Name: galaxy_user_openid_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.galaxy_user_openid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_user_openid_id_seq OWNER TO galaxydbuser;

--
-- Name: galaxy_user_openid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.galaxy_user_openid_id_seq OWNED BY public.galaxy_user_openid.id;


--
-- Name: genome_index_tool_data; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.genome_index_tool_data (
    id integer NOT NULL,
    job_id integer,
    dataset_id integer,
    deferred_job_id integer,
    transfer_job_id integer,
    fasta_path character varying(255),
    created_time timestamp without time zone,
    modified_time timestamp without time zone,
    indexer character varying(64),
    user_id integer
);


ALTER TABLE public.genome_index_tool_data OWNER TO galaxydbuser;

--
-- Name: genome_index_tool_data_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.genome_index_tool_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.genome_index_tool_data_id_seq OWNER TO galaxydbuser;

--
-- Name: genome_index_tool_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.genome_index_tool_data_id_seq OWNED BY public.genome_index_tool_data.id;


--
-- Name: group_quota_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.group_quota_association (
    id integer NOT NULL,
    group_id integer,
    quota_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone
);


ALTER TABLE public.group_quota_association OWNER TO galaxydbuser;

--
-- Name: group_quota_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.group_quota_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_quota_association_id_seq OWNER TO galaxydbuser;

--
-- Name: group_quota_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.group_quota_association_id_seq OWNED BY public.group_quota_association.id;


--
-- Name: group_role_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.group_role_association (
    id integer NOT NULL,
    group_id integer,
    role_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone
);


ALTER TABLE public.group_role_association OWNER TO galaxydbuser;

--
-- Name: group_role_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.group_role_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.group_role_association_id_seq OWNER TO galaxydbuser;

--
-- Name: group_role_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.group_role_association_id_seq OWNED BY public.group_role_association.id;


--
-- Name: history; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer,
    name character varying(255),
    hid_counter integer,
    deleted boolean,
    purged boolean,
    genome_build character varying(40),
    importable boolean,
    slug text,
    published boolean,
    importing boolean
);


ALTER TABLE public.history OWNER TO galaxydbuser;

--
-- Name: history_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_annotation_association (
    id integer NOT NULL,
    history_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.history_annotation_association OWNER TO galaxydbuser;

--
-- Name: history_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_annotation_association_id_seq OWNED BY public.history_annotation_association.id;


--
-- Name: history_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association (
    id integer NOT NULL,
    history_id integer,
    dataset_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    copied_from_history_dataset_association_id integer,
    hid integer,
    name character varying(255),
    info character varying(255),
    blurb character varying(255),
    peek text,
    extension character varying(64),
    metadata bytea,
    parent_id integer,
    designation character varying(255),
    deleted boolean,
    visible boolean,
    copied_from_library_dataset_dataset_association_id integer,
    state character varying(64),
    purged boolean,
    tool_version text,
    extended_metadata_id integer,
    hidden_beneath_collection_instance_id integer,
    version integer
);


ALTER TABLE public.history_dataset_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_annotation_association (
    id integer NOT NULL,
    history_dataset_association_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.history_dataset_association_annotation_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_annotation_association_id_seq OWNED BY public.history_dataset_association_annotation_association.id;


--
-- Name: history_dataset_association_display_at_authorization; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_display_at_authorization (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    history_dataset_association_id integer,
    user_id integer,
    site character varying(255)
);


ALTER TABLE public.history_dataset_association_display_at_authorization OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_display_at_authorization_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_display_at_authorization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_display_at_authorization_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_display_at_authorization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_display_at_authorization_id_seq OWNED BY public.history_dataset_association_display_at_authorization.id;


--
-- Name: history_dataset_association_history; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_history (
    id integer NOT NULL,
    history_dataset_association_id integer,
    update_time timestamp without time zone,
    version integer,
    name character varying(255),
    extension character varying(64),
    metadata bytea,
    extended_metadata_id integer
);


ALTER TABLE public.history_dataset_association_history OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_history_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_history_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_history_id_seq OWNED BY public.history_dataset_association_history.id;


--
-- Name: history_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_id_seq OWNED BY public.history_dataset_association.id;


--
-- Name: history_dataset_association_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_rating_association (
    id integer NOT NULL,
    history_dataset_association_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.history_dataset_association_rating_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_rating_association_id_seq OWNED BY public.history_dataset_association_rating_association.id;


--
-- Name: history_dataset_association_subset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_subset (
    id integer NOT NULL,
    history_dataset_association_id integer,
    history_dataset_association_subset_id integer,
    location character varying(255)
);


ALTER TABLE public.history_dataset_association_subset OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_subset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_subset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_subset_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_subset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_subset_id_seq OWNED BY public.history_dataset_association_subset.id;


--
-- Name: history_dataset_association_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_association_tag_association (
    id integer NOT NULL,
    history_dataset_association_id integer,
    tag_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255),
    user_id integer
);


ALTER TABLE public.history_dataset_association_tag_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_association_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_association_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_association_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_association_tag_association_id_seq OWNED BY public.history_dataset_association_tag_association.id;


--
-- Name: history_dataset_collection_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_collection_annotation_association (
    id integer NOT NULL,
    history_dataset_collection_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.history_dataset_collection_annotation_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_collection_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_collection_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_collection_annotation_association_id_seq OWNED BY public.history_dataset_collection_annotation_association.id;


--
-- Name: history_dataset_collection_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_collection_association (
    id integer NOT NULL,
    collection_id integer,
    history_id integer,
    hid integer,
    name character varying(255),
    deleted boolean,
    visible boolean,
    copied_from_history_dataset_collection_association_id integer,
    implicit_output_name character varying(255),
    implicit_collection_jobs_id integer,
    job_id integer
);


ALTER TABLE public.history_dataset_collection_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_collection_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_collection_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_collection_association_id_seq OWNED BY public.history_dataset_collection_association.id;


--
-- Name: history_dataset_collection_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_collection_rating_association (
    id integer NOT NULL,
    history_dataset_collection_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.history_dataset_collection_rating_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_collection_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_collection_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_collection_rating_association_id_seq OWNED BY public.history_dataset_collection_rating_association.id;


--
-- Name: history_dataset_collection_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_dataset_collection_tag_association (
    id integer NOT NULL,
    history_dataset_collection_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.history_dataset_collection_tag_association OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_dataset_collection_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_dataset_collection_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_dataset_collection_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_dataset_collection_tag_association_id_seq OWNED BY public.history_dataset_collection_tag_association.id;


--
-- Name: history_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_id_seq OWNER TO galaxydbuser;

--
-- Name: history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_id_seq OWNED BY public.history.id;


--
-- Name: history_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_rating_association (
    id integer NOT NULL,
    history_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.history_rating_association OWNER TO galaxydbuser;

--
-- Name: history_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_rating_association_id_seq OWNED BY public.history_rating_association.id;


--
-- Name: history_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_tag_association (
    id integer NOT NULL,
    history_id integer,
    tag_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255),
    user_id integer
);


ALTER TABLE public.history_tag_association OWNER TO galaxydbuser;

--
-- Name: history_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_tag_association_id_seq OWNED BY public.history_tag_association.id;


--
-- Name: history_user_share_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.history_user_share_association (
    id integer NOT NULL,
    history_id integer,
    user_id integer
);


ALTER TABLE public.history_user_share_association OWNER TO galaxydbuser;

--
-- Name: history_user_share_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.history_user_share_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.history_user_share_association_id_seq OWNER TO galaxydbuser;

--
-- Name: history_user_share_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.history_user_share_association_id_seq OWNED BY public.history_user_share_association.id;


--
-- Name: implicit_collection_jobs; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.implicit_collection_jobs (
    id integer NOT NULL,
    populated_state character varying(64) NOT NULL
);


ALTER TABLE public.implicit_collection_jobs OWNER TO galaxydbuser;

--
-- Name: implicit_collection_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.implicit_collection_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.implicit_collection_jobs_id_seq OWNER TO galaxydbuser;

--
-- Name: implicit_collection_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.implicit_collection_jobs_id_seq OWNED BY public.implicit_collection_jobs.id;


--
-- Name: implicit_collection_jobs_job_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.implicit_collection_jobs_job_association (
    implicit_collection_jobs_id integer,
    id integer NOT NULL,
    job_id integer,
    order_index integer NOT NULL
);


ALTER TABLE public.implicit_collection_jobs_job_association OWNER TO galaxydbuser;

--
-- Name: implicit_collection_jobs_job_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.implicit_collection_jobs_job_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.implicit_collection_jobs_job_association_id_seq OWNER TO galaxydbuser;

--
-- Name: implicit_collection_jobs_job_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.implicit_collection_jobs_job_association_id_seq OWNED BY public.implicit_collection_jobs_job_association.id;


--
-- Name: implicitly_converted_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.implicitly_converted_dataset_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    hda_id integer,
    hda_parent_id integer,
    deleted boolean,
    metadata_safe boolean,
    type character varying(255),
    ldda_parent_id integer,
    ldda_id integer
);


ALTER TABLE public.implicitly_converted_dataset_association OWNER TO galaxydbuser;

--
-- Name: implicitly_converted_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.implicitly_converted_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.implicitly_converted_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: implicitly_converted_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.implicitly_converted_dataset_association_id_seq OWNED BY public.implicitly_converted_dataset_association.id;


--
-- Name: implicitly_created_dataset_collection_inputs; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.implicitly_created_dataset_collection_inputs (
    id integer NOT NULL,
    dataset_collection_id integer,
    input_dataset_collection_id integer,
    name character varying(255)
);


ALTER TABLE public.implicitly_created_dataset_collection_inputs OWNER TO galaxydbuser;

--
-- Name: implicitly_created_dataset_collection_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.implicitly_created_dataset_collection_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.implicitly_created_dataset_collection_inputs_id_seq OWNER TO galaxydbuser;

--
-- Name: implicitly_created_dataset_collection_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.implicitly_created_dataset_collection_inputs_id_seq OWNED BY public.implicitly_created_dataset_collection_inputs.id;


--
-- Name: job; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    history_id integer,
    tool_id character varying(255),
    tool_version text,
    state character varying(64),
    info character varying(255),
    command_line text,
    param_filename character varying(1024),
    runner_name character varying(255),
    tool_stdout text,
    tool_stderr text,
    traceback text,
    session_id integer,
    job_runner_name character varying(255),
    job_runner_external_id character varying(255),
    library_folder_id integer,
    user_id integer,
    imported boolean,
    object_store_id character varying(255),
    params character varying(255),
    handler character varying(255),
    exit_code integer,
    destination_id character varying(255),
    destination_params bytea,
    dependencies bytea,
    copied_from_job_id integer,
    job_messages bytea,
    job_stdout text,
    job_stderr text,
    dynamic_tool_id integer
);


ALTER TABLE public.job OWNER TO galaxydbuser;

--
-- Name: job_export_history_archive; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_export_history_archive (
    id integer NOT NULL,
    job_id integer,
    history_id integer,
    dataset_id integer,
    compressed boolean,
    history_attrs_filename text,
    datasets_attrs_filename text,
    jobs_attrs_filename text
);


ALTER TABLE public.job_export_history_archive OWNER TO galaxydbuser;

--
-- Name: job_export_history_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_export_history_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_export_history_archive_id_seq OWNER TO galaxydbuser;

--
-- Name: job_export_history_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_export_history_archive_id_seq OWNED BY public.job_export_history_archive.id;


--
-- Name: job_external_output_metadata; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_external_output_metadata (
    id integer NOT NULL,
    job_id integer,
    history_dataset_association_id integer,
    library_dataset_dataset_association_id integer,
    filename_in character varying(255),
    filename_out character varying(255),
    filename_results_code character varying(255),
    filename_kwds character varying(255),
    job_runner_external_pid character varying(255),
    filename_override_metadata character varying(255),
    is_valid boolean
);


ALTER TABLE public.job_external_output_metadata OWNER TO galaxydbuser;

--
-- Name: job_external_output_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_external_output_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_external_output_metadata_id_seq OWNER TO galaxydbuser;

--
-- Name: job_external_output_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_external_output_metadata_id_seq OWNED BY public.job_external_output_metadata.id;


--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_id_seq OWNER TO galaxydbuser;

--
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_id_seq OWNED BY public.job.id;


--
-- Name: job_import_history_archive; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_import_history_archive (
    id integer NOT NULL,
    job_id integer,
    history_id integer,
    archive_dir text
);


ALTER TABLE public.job_import_history_archive OWNER TO galaxydbuser;

--
-- Name: job_import_history_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_import_history_archive_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_import_history_archive_id_seq OWNER TO galaxydbuser;

--
-- Name: job_import_history_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_import_history_archive_id_seq OWNED BY public.job_import_history_archive.id;


--
-- Name: job_metric_numeric; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_metric_numeric (
    id integer NOT NULL,
    job_id integer,
    plugin character varying(255),
    metric_name character varying(255),
    metric_value numeric(26,7)
);


ALTER TABLE public.job_metric_numeric OWNER TO galaxydbuser;

--
-- Name: job_metric_numeric_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_metric_numeric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_metric_numeric_id_seq OWNER TO galaxydbuser;

--
-- Name: job_metric_numeric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_metric_numeric_id_seq OWNED BY public.job_metric_numeric.id;


--
-- Name: job_metric_text; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_metric_text (
    id integer NOT NULL,
    job_id integer,
    plugin character varying(255),
    metric_name character varying(255),
    metric_value character varying(1023)
);


ALTER TABLE public.job_metric_text OWNER TO galaxydbuser;

--
-- Name: job_metric_text_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_metric_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_metric_text_id_seq OWNER TO galaxydbuser;

--
-- Name: job_metric_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_metric_text_id_seq OWNED BY public.job_metric_text.id;


--
-- Name: job_parameter; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_parameter (
    id integer NOT NULL,
    job_id integer,
    name character varying(255),
    value text
);


ALTER TABLE public.job_parameter OWNER TO galaxydbuser;

--
-- Name: job_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_parameter_id_seq OWNER TO galaxydbuser;

--
-- Name: job_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_parameter_id_seq OWNED BY public.job_parameter.id;


--
-- Name: job_state_history; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_state_history (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    job_id integer,
    state character varying(64),
    info character varying(255)
);


ALTER TABLE public.job_state_history OWNER TO galaxydbuser;

--
-- Name: job_state_history_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_state_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_state_history_id_seq OWNER TO galaxydbuser;

--
-- Name: job_state_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_state_history_id_seq OWNED BY public.job_state_history.id;


--
-- Name: job_to_implicit_output_dataset_collection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_implicit_output_dataset_collection (
    id integer NOT NULL,
    job_id integer,
    dataset_collection_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_implicit_output_dataset_collection OWNER TO galaxydbuser;

--
-- Name: job_to_implicit_output_dataset_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_implicit_output_dataset_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_implicit_output_dataset_collection_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_implicit_output_dataset_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_implicit_output_dataset_collection_id_seq OWNED BY public.job_to_implicit_output_dataset_collection.id;


--
-- Name: job_to_input_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_input_dataset (
    id integer NOT NULL,
    job_id integer,
    dataset_id integer,
    name character varying(255),
    dataset_version integer
);


ALTER TABLE public.job_to_input_dataset OWNER TO galaxydbuser;

--
-- Name: job_to_input_dataset_collection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_input_dataset_collection (
    id integer NOT NULL,
    job_id integer,
    dataset_collection_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_input_dataset_collection OWNER TO galaxydbuser;

--
-- Name: job_to_input_dataset_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_input_dataset_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_input_dataset_collection_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_input_dataset_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_input_dataset_collection_id_seq OWNED BY public.job_to_input_dataset_collection.id;


--
-- Name: job_to_input_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_input_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_input_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_input_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_input_dataset_id_seq OWNED BY public.job_to_input_dataset.id;


--
-- Name: job_to_input_library_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_input_library_dataset (
    id integer NOT NULL,
    job_id integer,
    ldda_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_input_library_dataset OWNER TO galaxydbuser;

--
-- Name: job_to_input_library_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_input_library_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_input_library_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_input_library_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_input_library_dataset_id_seq OWNED BY public.job_to_input_library_dataset.id;


--
-- Name: job_to_output_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_output_dataset (
    id integer NOT NULL,
    job_id integer,
    dataset_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_output_dataset OWNER TO galaxydbuser;

--
-- Name: job_to_output_dataset_collection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_output_dataset_collection (
    id integer NOT NULL,
    job_id integer,
    dataset_collection_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_output_dataset_collection OWNER TO galaxydbuser;

--
-- Name: job_to_output_dataset_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_output_dataset_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_output_dataset_collection_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_output_dataset_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_output_dataset_collection_id_seq OWNED BY public.job_to_output_dataset_collection.id;


--
-- Name: job_to_output_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_output_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_output_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_output_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_output_dataset_id_seq OWNED BY public.job_to_output_dataset.id;


--
-- Name: job_to_output_library_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.job_to_output_library_dataset (
    id integer NOT NULL,
    job_id integer,
    ldda_id integer,
    name character varying(255)
);


ALTER TABLE public.job_to_output_library_dataset OWNER TO galaxydbuser;

--
-- Name: job_to_output_library_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.job_to_output_library_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.job_to_output_library_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: job_to_output_library_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.job_to_output_library_dataset_id_seq OWNED BY public.job_to_output_library_dataset.id;


--
-- Name: kombu_message; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.kombu_message (
    id integer NOT NULL,
    visible boolean,
    "timestamp" timestamp without time zone,
    payload text NOT NULL,
    version smallint NOT NULL,
    queue_id integer
);


ALTER TABLE public.kombu_message OWNER TO galaxydbuser;

--
-- Name: kombu_queue; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.kombu_queue (
    id integer NOT NULL,
    name character varying(200)
);


ALTER TABLE public.kombu_queue OWNER TO galaxydbuser;

--
-- Name: library; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library (
    id integer NOT NULL,
    root_folder_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255),
    deleted boolean,
    purged boolean,
    description text,
    synopsis text
);


ALTER TABLE public.library OWNER TO galaxydbuser;

--
-- Name: library_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset (
    id integer NOT NULL,
    library_dataset_dataset_association_id integer,
    folder_id integer,
    order_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255),
    info character varying(255),
    deleted boolean,
    purged boolean
);


ALTER TABLE public.library_dataset OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_collection_annotation_association (
    id integer NOT NULL,
    library_dataset_collection_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.library_dataset_collection_annotation_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_collection_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_collection_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_collection_annotation_association_id_seq OWNED BY public.library_dataset_collection_annotation_association.id;


--
-- Name: library_dataset_collection_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_collection_association (
    id integer NOT NULL,
    collection_id integer,
    name character varying(255),
    deleted boolean,
    folder_id integer
);


ALTER TABLE public.library_dataset_collection_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_collection_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_collection_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_collection_association_id_seq OWNED BY public.library_dataset_collection_association.id;


--
-- Name: library_dataset_collection_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_collection_rating_association (
    id integer NOT NULL,
    library_dataset_collection_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.library_dataset_collection_rating_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_collection_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_collection_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_collection_rating_association_id_seq OWNED BY public.library_dataset_collection_rating_association.id;


--
-- Name: library_dataset_collection_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_collection_tag_association (
    id integer NOT NULL,
    library_dataset_collection_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.library_dataset_collection_tag_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_collection_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_collection_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_collection_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_collection_tag_association_id_seq OWNED BY public.library_dataset_collection_tag_association.id;


--
-- Name: library_dataset_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_dataset_association (
    id integer NOT NULL,
    library_dataset_id integer,
    dataset_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    copied_from_history_dataset_association_id integer,
    copied_from_library_dataset_dataset_association_id integer,
    name character varying(255),
    info character varying(255),
    blurb character varying(255),
    peek text,
    extension character varying(64),
    metadata bytea,
    parent_id integer,
    designation character varying(255),
    deleted boolean,
    visible boolean,
    user_id integer,
    message character varying(255),
    state character varying(64),
    tool_version text,
    extended_metadata_id integer
);


ALTER TABLE public.library_dataset_dataset_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_dataset_association_id_seq OWNED BY public.library_dataset_dataset_association.id;


--
-- Name: library_dataset_dataset_association_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_dataset_association_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    library_dataset_dataset_association_id integer,
    role_id integer
);


ALTER TABLE public.library_dataset_dataset_association_permissions OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_dataset_association_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_dataset_association_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_dataset_association_permissions_id_seq OWNED BY public.library_dataset_dataset_association_permissions.id;


--
-- Name: library_dataset_dataset_association_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_dataset_association_tag_association (
    id integer NOT NULL,
    library_dataset_dataset_association_id integer,
    tag_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255),
    user_id integer
);


ALTER TABLE public.library_dataset_dataset_association_tag_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_dataset_association_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_dataset_association_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_association_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_dataset_association_tag_association_id_seq OWNED BY public.library_dataset_dataset_association_tag_association.id;


--
-- Name: library_dataset_dataset_info_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_dataset_info_association (
    id integer NOT NULL,
    library_dataset_dataset_association_id integer,
    form_definition_id integer,
    form_values_id integer,
    deleted boolean
);


ALTER TABLE public.library_dataset_dataset_info_association OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_info_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_dataset_info_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_dataset_info_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_dataset_info_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_dataset_info_association_id_seq OWNED BY public.library_dataset_dataset_info_association.id;


--
-- Name: library_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_id_seq OWNED BY public.library_dataset.id;


--
-- Name: library_dataset_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_dataset_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    library_dataset_id integer,
    role_id integer
);


ALTER TABLE public.library_dataset_permissions OWNER TO galaxydbuser;

--
-- Name: library_dataset_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_dataset_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_dataset_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: library_dataset_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_dataset_permissions_id_seq OWNED BY public.library_dataset_permissions.id;


--
-- Name: library_folder; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_folder (
    id integer NOT NULL,
    parent_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name text,
    description text,
    order_id integer,
    item_count integer,
    deleted boolean,
    purged boolean,
    genome_build character varying(40)
);


ALTER TABLE public.library_folder OWNER TO galaxydbuser;

--
-- Name: library_folder_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_folder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_folder_id_seq OWNER TO galaxydbuser;

--
-- Name: library_folder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_folder_id_seq OWNED BY public.library_folder.id;


--
-- Name: library_folder_info_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_folder_info_association (
    id integer NOT NULL,
    library_folder_id integer,
    form_definition_id integer,
    form_values_id integer,
    deleted boolean,
    inheritable boolean
);


ALTER TABLE public.library_folder_info_association OWNER TO galaxydbuser;

--
-- Name: library_folder_info_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_folder_info_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_folder_info_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_folder_info_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_folder_info_association_id_seq OWNED BY public.library_folder_info_association.id;


--
-- Name: library_folder_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_folder_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    library_folder_id integer,
    role_id integer
);


ALTER TABLE public.library_folder_permissions OWNER TO galaxydbuser;

--
-- Name: library_folder_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_folder_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_folder_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: library_folder_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_folder_permissions_id_seq OWNED BY public.library_folder_permissions.id;


--
-- Name: library_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_id_seq OWNER TO galaxydbuser;

--
-- Name: library_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_id_seq OWNED BY public.library.id;


--
-- Name: library_info_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_info_association (
    id integer NOT NULL,
    library_id integer,
    form_definition_id integer,
    form_values_id integer,
    deleted boolean,
    inheritable boolean
);


ALTER TABLE public.library_info_association OWNER TO galaxydbuser;

--
-- Name: library_info_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_info_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_info_association_id_seq OWNER TO galaxydbuser;

--
-- Name: library_info_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_info_association_id_seq OWNED BY public.library_info_association.id;


--
-- Name: library_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.library_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    library_id integer,
    role_id integer
);


ALTER TABLE public.library_permissions OWNER TO galaxydbuser;

--
-- Name: library_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.library_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.library_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: library_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.library_permissions_id_seq OWNED BY public.library_permissions.id;


--
-- Name: message_id_sequence; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.message_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_id_sequence OWNER TO galaxydbuser;

--
-- Name: metadata_file; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.metadata_file (
    id integer NOT NULL,
    name text,
    hda_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    deleted boolean,
    purged boolean,
    lda_id integer,
    object_store_id character varying(255),
    uuid character(32)
);


ALTER TABLE public.metadata_file OWNER TO galaxydbuser;

--
-- Name: metadata_file_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.metadata_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metadata_file_id_seq OWNER TO galaxydbuser;

--
-- Name: metadata_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.metadata_file_id_seq OWNED BY public.metadata_file.id;


--
-- Name: migrate_tools; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.migrate_tools (
    repository_id character varying(255),
    repository_path text,
    version integer
);


ALTER TABLE public.migrate_tools OWNER TO galaxydbuser;

--
-- Name: migrate_version; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.migrate_version (
    repository_id character varying(250) NOT NULL,
    repository_path text,
    version integer
);


ALTER TABLE public.migrate_version OWNER TO galaxydbuser;

--
-- Name: oidc_user_authnz_tokens; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.oidc_user_authnz_tokens (
    id integer NOT NULL,
    user_id integer,
    uid character varying(255),
    provider character varying(32),
    extra_data bytea,
    lifetime integer,
    assoc_type character varying(64)
);


ALTER TABLE public.oidc_user_authnz_tokens OWNER TO galaxydbuser;

--
-- Name: oidc_user_authnz_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.oidc_user_authnz_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oidc_user_authnz_tokens_id_seq OWNER TO galaxydbuser;

--
-- Name: oidc_user_authnz_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.oidc_user_authnz_tokens_id_seq OWNED BY public.oidc_user_authnz_tokens.id;


--
-- Name: page; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer NOT NULL,
    latest_revision_id integer,
    title text,
    slug text,
    published boolean,
    deleted boolean,
    importable boolean
);


ALTER TABLE public.page OWNER TO galaxydbuser;

--
-- Name: page_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page_annotation_association (
    id integer NOT NULL,
    page_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.page_annotation_association OWNER TO galaxydbuser;

--
-- Name: page_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: page_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_annotation_association_id_seq OWNED BY public.page_annotation_association.id;


--
-- Name: page_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_id_seq OWNER TO galaxydbuser;

--
-- Name: page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_id_seq OWNED BY public.page.id;


--
-- Name: page_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page_rating_association (
    id integer NOT NULL,
    page_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.page_rating_association OWNER TO galaxydbuser;

--
-- Name: page_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: page_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_rating_association_id_seq OWNED BY public.page_rating_association.id;


--
-- Name: page_revision; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page_revision (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    page_id integer NOT NULL,
    title text,
    content text
);


ALTER TABLE public.page_revision OWNER TO galaxydbuser;

--
-- Name: page_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_revision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_revision_id_seq OWNER TO galaxydbuser;

--
-- Name: page_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_revision_id_seq OWNED BY public.page_revision.id;


--
-- Name: page_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page_tag_association (
    id integer NOT NULL,
    page_id integer,
    tag_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255),
    user_id integer
);


ALTER TABLE public.page_tag_association OWNER TO galaxydbuser;

--
-- Name: page_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: page_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_tag_association_id_seq OWNED BY public.page_tag_association.id;


--
-- Name: page_user_share_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.page_user_share_association (
    id integer NOT NULL,
    page_id integer,
    user_id integer
);


ALTER TABLE public.page_user_share_association OWNER TO galaxydbuser;

--
-- Name: page_user_share_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.page_user_share_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_user_share_association_id_seq OWNER TO galaxydbuser;

--
-- Name: page_user_share_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.page_user_share_association_id_seq OWNED BY public.page_user_share_association.id;


--
-- Name: password_reset_token; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.password_reset_token (
    token character varying(32) NOT NULL,
    expiration_time timestamp without time zone,
    user_id integer
);


ALTER TABLE public.password_reset_token OWNER TO galaxydbuser;

--
-- Name: post_job_action; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.post_job_action (
    id integer NOT NULL,
    workflow_step_id integer NOT NULL,
    action_type character varying(255) NOT NULL,
    output_name character varying(255),
    action_arguments bytea
);


ALTER TABLE public.post_job_action OWNER TO galaxydbuser;

--
-- Name: post_job_action_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.post_job_action_association (
    id integer NOT NULL,
    post_job_action_id integer NOT NULL,
    job_id integer NOT NULL
);


ALTER TABLE public.post_job_action_association OWNER TO galaxydbuser;

--
-- Name: post_job_action_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.post_job_action_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_job_action_association_id_seq OWNER TO galaxydbuser;

--
-- Name: post_job_action_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.post_job_action_association_id_seq OWNED BY public.post_job_action_association.id;


--
-- Name: post_job_action_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.post_job_action_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_job_action_id_seq OWNER TO galaxydbuser;

--
-- Name: post_job_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.post_job_action_id_seq OWNED BY public.post_job_action.id;


--
-- Name: psa_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.psa_association (
    id integer NOT NULL,
    server_url character varying(255),
    handle character varying(255),
    secret character varying(255),
    issued integer,
    lifetime integer,
    assoc_type character varying(64)
);


ALTER TABLE public.psa_association OWNER TO galaxydbuser;

--
-- Name: psa_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.psa_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.psa_association_id_seq OWNER TO galaxydbuser;

--
-- Name: psa_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.psa_association_id_seq OWNED BY public.psa_association.id;


--
-- Name: psa_code; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.psa_code (
    id integer NOT NULL,
    email character varying(200),
    code character varying(32)
);


ALTER TABLE public.psa_code OWNER TO galaxydbuser;

--
-- Name: psa_code_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.psa_code_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.psa_code_id_seq OWNER TO galaxydbuser;

--
-- Name: psa_code_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.psa_code_id_seq OWNED BY public.psa_code.id;


--
-- Name: psa_nonce; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.psa_nonce (
    id integer NOT NULL,
    server_url character varying(255),
    "timestamp" integer,
    salt character varying(40)
);


ALTER TABLE public.psa_nonce OWNER TO galaxydbuser;

--
-- Name: psa_nonce_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.psa_nonce_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.psa_nonce_id_seq OWNER TO galaxydbuser;

--
-- Name: psa_nonce_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.psa_nonce_id_seq OWNED BY public.psa_nonce.id;


--
-- Name: psa_partial; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.psa_partial (
    id integer NOT NULL,
    token character varying(32),
    data text,
    next_step integer,
    backend character varying(32)
);


ALTER TABLE public.psa_partial OWNER TO galaxydbuser;

--
-- Name: psa_partial_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.psa_partial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.psa_partial_id_seq OWNER TO galaxydbuser;

--
-- Name: psa_partial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.psa_partial_id_seq OWNED BY public.psa_partial.id;


--
-- Name: queue_id_sequence; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.queue_id_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.queue_id_sequence OWNER TO galaxydbuser;

--
-- Name: quota; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.quota (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255),
    description text,
    bytes bigint,
    operation character varying(8),
    deleted boolean
);


ALTER TABLE public.quota OWNER TO galaxydbuser;

--
-- Name: quota_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.quota_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quota_id_seq OWNER TO galaxydbuser;

--
-- Name: quota_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.quota_id_seq OWNED BY public.quota.id;


--
-- Name: repository_dependency; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.repository_dependency (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_shed_repository_id integer NOT NULL
);


ALTER TABLE public.repository_dependency OWNER TO galaxydbuser;

--
-- Name: repository_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.repository_dependency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repository_dependency_id_seq OWNER TO galaxydbuser;

--
-- Name: repository_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.repository_dependency_id_seq OWNED BY public.repository_dependency.id;


--
-- Name: repository_repository_dependency_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.repository_repository_dependency_association (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_shed_repository_id integer,
    repository_dependency_id integer
);


ALTER TABLE public.repository_repository_dependency_association OWNER TO galaxydbuser;

--
-- Name: repository_repository_dependency_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.repository_repository_dependency_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repository_repository_dependency_association_id_seq OWNER TO galaxydbuser;

--
-- Name: repository_repository_dependency_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.repository_repository_dependency_association_id_seq OWNED BY public.repository_repository_dependency_association.id;


--
-- Name: request; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    "desc" text,
    form_values_id integer,
    request_type_id integer,
    user_id integer,
    deleted boolean,
    notification bytea
);


ALTER TABLE public.request OWNER TO galaxydbuser;

--
-- Name: request_event; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request_event (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    request_id integer,
    state character varying(255),
    comment text
);


ALTER TABLE public.request_event OWNER TO galaxydbuser;

--
-- Name: request_event_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_event_id_seq OWNER TO galaxydbuser;

--
-- Name: request_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_event_id_seq OWNED BY public.request_event.id;


--
-- Name: request_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_id_seq OWNER TO galaxydbuser;

--
-- Name: request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_id_seq OWNED BY public.request.id;


--
-- Name: request_type; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request_type (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    "desc" text,
    request_form_id integer,
    sample_form_id integer,
    deleted boolean
);


ALTER TABLE public.request_type OWNER TO galaxydbuser;

--
-- Name: request_type_external_service_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request_type_external_service_association (
    id integer NOT NULL,
    request_type_id integer,
    external_service_id integer
);


ALTER TABLE public.request_type_external_service_association OWNER TO galaxydbuser;

--
-- Name: request_type_external_service_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_type_external_service_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_type_external_service_association_id_seq OWNER TO galaxydbuser;

--
-- Name: request_type_external_service_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_type_external_service_association_id_seq OWNED BY public.request_type_external_service_association.id;


--
-- Name: request_type_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_type_id_seq OWNER TO galaxydbuser;

--
-- Name: request_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_type_id_seq OWNED BY public.request_type.id;


--
-- Name: request_type_permissions; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request_type_permissions (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    action text,
    request_type_id integer,
    role_id integer
);


ALTER TABLE public.request_type_permissions OWNER TO galaxydbuser;

--
-- Name: request_type_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_type_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_type_permissions_id_seq OWNER TO galaxydbuser;

--
-- Name: request_type_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_type_permissions_id_seq OWNED BY public.request_type_permissions.id;


--
-- Name: request_type_run_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.request_type_run_association (
    id integer NOT NULL,
    request_type_id integer NOT NULL,
    run_id integer NOT NULL
);


ALTER TABLE public.request_type_run_association OWNER TO galaxydbuser;

--
-- Name: request_type_run_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.request_type_run_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.request_type_run_association_id_seq OWNER TO galaxydbuser;

--
-- Name: request_type_run_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.request_type_run_association_id_seq OWNED BY public.request_type_run_association.id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.role (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255),
    description text,
    type character varying(40),
    deleted boolean
);


ALTER TABLE public.role OWNER TO galaxydbuser;

--
-- Name: role_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.role_id_seq OWNER TO galaxydbuser;

--
-- Name: role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;


--
-- Name: run; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.run (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    form_definition_id integer,
    form_values_id integer,
    deleted boolean,
    subindex character varying(255)
);


ALTER TABLE public.run OWNER TO galaxydbuser;

--
-- Name: run_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.run_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.run_id_seq OWNER TO galaxydbuser;

--
-- Name: run_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.run_id_seq OWNED BY public.run.id;


--
-- Name: sample; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.sample (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    "desc" text,
    form_values_id integer,
    request_id integer,
    deleted boolean,
    bar_code character varying(255),
    library_id integer,
    folder_id integer,
    workflow bytea,
    history_id integer
);


ALTER TABLE public.sample OWNER TO galaxydbuser;

--
-- Name: sample_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.sample_dataset (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    sample_id integer,
    name character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    error_msg text,
    size character varying(255),
    file_path text,
    external_service_id integer
);


ALTER TABLE public.sample_dataset OWNER TO galaxydbuser;

--
-- Name: sample_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.sample_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: sample_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.sample_dataset_id_seq OWNED BY public.sample_dataset.id;


--
-- Name: sample_event; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.sample_event (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    sample_id integer,
    sample_state_id integer,
    comment text
);


ALTER TABLE public.sample_event OWNER TO galaxydbuser;

--
-- Name: sample_event_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.sample_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_event_id_seq OWNER TO galaxydbuser;

--
-- Name: sample_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.sample_event_id_seq OWNED BY public.sample_event.id;


--
-- Name: sample_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.sample_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_id_seq OWNER TO galaxydbuser;

--
-- Name: sample_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.sample_id_seq OWNED BY public.sample.id;


--
-- Name: sample_run_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.sample_run_association (
    id integer NOT NULL,
    sample_id integer NOT NULL,
    run_id integer NOT NULL
);


ALTER TABLE public.sample_run_association OWNER TO galaxydbuser;

--
-- Name: sample_run_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.sample_run_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_run_association_id_seq OWNER TO galaxydbuser;

--
-- Name: sample_run_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.sample_run_association_id_seq OWNED BY public.sample_run_association.id;


--
-- Name: sample_state; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.sample_state (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    name character varying(255) NOT NULL,
    "desc" text,
    request_type_id integer
);


ALTER TABLE public.sample_state OWNER TO galaxydbuser;

--
-- Name: sample_state_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.sample_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sample_state_id_seq OWNER TO galaxydbuser;

--
-- Name: sample_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.sample_state_id_seq OWNED BY public.sample_state.id;


--
-- Name: stored_workflow; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer NOT NULL,
    latest_workflow_id integer,
    name text,
    deleted boolean,
    importable boolean,
    slug text,
    published boolean,
    from_path text
);


ALTER TABLE public.stored_workflow OWNER TO galaxydbuser;

--
-- Name: stored_workflow_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow_annotation_association (
    id integer NOT NULL,
    stored_workflow_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.stored_workflow_annotation_association OWNER TO galaxydbuser;

--
-- Name: stored_workflow_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_annotation_association_id_seq OWNED BY public.stored_workflow_annotation_association.id;


--
-- Name: stored_workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_id_seq OWNED BY public.stored_workflow.id;


--
-- Name: stored_workflow_menu_entry; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow_menu_entry (
    id integer NOT NULL,
    stored_workflow_id integer,
    user_id integer,
    order_index integer
);


ALTER TABLE public.stored_workflow_menu_entry OWNER TO galaxydbuser;

--
-- Name: stored_workflow_menu_entry_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_menu_entry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_menu_entry_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_menu_entry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_menu_entry_id_seq OWNED BY public.stored_workflow_menu_entry.id;


--
-- Name: stored_workflow_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow_rating_association (
    id integer NOT NULL,
    stored_workflow_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.stored_workflow_rating_association OWNER TO galaxydbuser;

--
-- Name: stored_workflow_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_rating_association_id_seq OWNED BY public.stored_workflow_rating_association.id;


--
-- Name: stored_workflow_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow_tag_association (
    id integer NOT NULL,
    stored_workflow_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.stored_workflow_tag_association OWNER TO galaxydbuser;

--
-- Name: stored_workflow_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_tag_association_id_seq OWNED BY public.stored_workflow_tag_association.id;


--
-- Name: stored_workflow_user_share_connection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.stored_workflow_user_share_connection (
    id integer NOT NULL,
    stored_workflow_id integer,
    user_id integer
);


ALTER TABLE public.stored_workflow_user_share_connection OWNER TO galaxydbuser;

--
-- Name: stored_workflow_user_share_connection_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.stored_workflow_user_share_connection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stored_workflow_user_share_connection_id_seq OWNER TO galaxydbuser;

--
-- Name: stored_workflow_user_share_connection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.stored_workflow_user_share_connection_id_seq OWNED BY public.stored_workflow_user_share_connection.id;


--
-- Name: tag; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tag (
    id integer NOT NULL,
    type integer,
    parent_id integer,
    name character varying(255)
);


ALTER TABLE public.tag OWNER TO galaxydbuser;

--
-- Name: tag_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tag_id_seq OWNER TO galaxydbuser;

--
-- Name: tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tag_id_seq OWNED BY public.tag.id;


--
-- Name: task; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.task (
    id integer NOT NULL,
    create_time timestamp without time zone,
    execution_time timestamp without time zone,
    update_time timestamp without time zone,
    state character varying(64),
    command_line text,
    param_filename character varying(1024),
    runner_name character varying(255),
    tool_stdout text,
    tool_stderr text,
    traceback text,
    job_id integer NOT NULL,
    task_runner_name character varying(255),
    task_runner_external_id character varying(255),
    prepare_input_files_cmd text,
    working_directory character varying(1024),
    info character varying(255),
    exit_code integer,
    job_messages bytea,
    job_stdout text,
    job_stderr text
);


ALTER TABLE public.task OWNER TO galaxydbuser;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.task_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_id_seq OWNER TO galaxydbuser;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.task_id_seq OWNED BY public.task.id;


--
-- Name: task_metric_numeric; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.task_metric_numeric (
    id integer NOT NULL,
    task_id integer,
    plugin character varying(255),
    metric_name character varying(255),
    metric_value numeric(26,7)
);


ALTER TABLE public.task_metric_numeric OWNER TO galaxydbuser;

--
-- Name: task_metric_numeric_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.task_metric_numeric_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_metric_numeric_id_seq OWNER TO galaxydbuser;

--
-- Name: task_metric_numeric_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.task_metric_numeric_id_seq OWNED BY public.task_metric_numeric.id;


--
-- Name: task_metric_text; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.task_metric_text (
    id integer NOT NULL,
    task_id integer,
    plugin character varying(255),
    metric_name character varying(255),
    metric_value character varying(1023)
);


ALTER TABLE public.task_metric_text OWNER TO galaxydbuser;

--
-- Name: task_metric_text_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.task_metric_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.task_metric_text_id_seq OWNER TO galaxydbuser;

--
-- Name: task_metric_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.task_metric_text_id_seq OWNED BY public.task_metric_text.id;


--
-- Name: tool_dependency; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tool_dependency (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_shed_repository_id integer NOT NULL,
    name character varying(255),
    version text,
    type character varying(40),
    status character varying(255) NOT NULL,
    error_message text
);


ALTER TABLE public.tool_dependency OWNER TO galaxydbuser;

--
-- Name: tool_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tool_dependency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_dependency_id_seq OWNER TO galaxydbuser;

--
-- Name: tool_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tool_dependency_id_seq OWNED BY public.tool_dependency.id;


--
-- Name: tool_shed_repository; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tool_shed_repository (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_shed character varying(255),
    name character varying(255),
    description text,
    owner character varying(255),
    changeset_revision character varying(255),
    deleted boolean,
    metadata bytea,
    includes_datatypes boolean,
    installed_changeset_revision character varying(255),
    uninstalled boolean,
    dist_to_shed boolean,
    ctx_rev character varying(10),
    status character varying(255),
    error_message text,
    tool_shed_status bytea
);


ALTER TABLE public.tool_shed_repository OWNER TO galaxydbuser;

--
-- Name: tool_shed_repository_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tool_shed_repository_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_shed_repository_id_seq OWNER TO galaxydbuser;

--
-- Name: tool_shed_repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tool_shed_repository_id_seq OWNED BY public.tool_shed_repository.id;


--
-- Name: tool_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tool_tag_association (
    id integer NOT NULL,
    tool_id character varying(255),
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.tool_tag_association OWNER TO galaxydbuser;

--
-- Name: tool_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tool_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: tool_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tool_tag_association_id_seq OWNED BY public.tool_tag_association.id;


--
-- Name: tool_version; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tool_version (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    tool_id character varying(255),
    tool_shed_repository_id integer
);


ALTER TABLE public.tool_version OWNER TO galaxydbuser;

--
-- Name: tool_version_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.tool_version_association (
    id integer NOT NULL,
    tool_id integer NOT NULL,
    parent_id integer NOT NULL
);


ALTER TABLE public.tool_version_association OWNER TO galaxydbuser;

--
-- Name: tool_version_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tool_version_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_version_association_id_seq OWNER TO galaxydbuser;

--
-- Name: tool_version_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tool_version_association_id_seq OWNED BY public.tool_version_association.id;


--
-- Name: tool_version_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.tool_version_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tool_version_id_seq OWNER TO galaxydbuser;

--
-- Name: tool_version_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.tool_version_id_seq OWNED BY public.tool_version.id;


--
-- Name: transfer_job; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.transfer_job (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    state character varying(64),
    path character varying(1024),
    params bytea,
    info text,
    pid integer,
    socket integer
);


ALTER TABLE public.transfer_job OWNER TO galaxydbuser;

--
-- Name: transfer_job_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.transfer_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transfer_job_id_seq OWNER TO galaxydbuser;

--
-- Name: transfer_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.transfer_job_id_seq OWNED BY public.transfer_job.id;


--
-- Name: user_action; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_action (
    id integer NOT NULL,
    create_time timestamp without time zone,
    user_id integer,
    session_id integer,
    action character varying(255),
    context character varying(512),
    params character varying(1024)
);


ALTER TABLE public.user_action OWNER TO galaxydbuser;

--
-- Name: user_action_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_action_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_action_id_seq OWNER TO galaxydbuser;

--
-- Name: user_action_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_action_id_seq OWNED BY public.user_action.id;


--
-- Name: user_address; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_address (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer,
    "desc" text,
    name character varying(255) NOT NULL,
    institution character varying(255),
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    postal_code character varying(255) NOT NULL,
    country character varying(255) NOT NULL,
    phone character varying(255),
    deleted boolean,
    purged boolean
);


ALTER TABLE public.user_address OWNER TO galaxydbuser;

--
-- Name: user_address_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_address_id_seq OWNER TO galaxydbuser;

--
-- Name: user_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_address_id_seq OWNED BY public.user_address.id;


--
-- Name: user_group_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_group_association (
    id integer NOT NULL,
    user_id integer,
    group_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone
);


ALTER TABLE public.user_group_association OWNER TO galaxydbuser;

--
-- Name: user_group_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_group_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_group_association_id_seq OWNER TO galaxydbuser;

--
-- Name: user_group_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_group_association_id_seq OWNED BY public.user_group_association.id;


--
-- Name: user_preference; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_preference (
    id integer NOT NULL,
    user_id integer,
    name character varying(255),
    value text
);


ALTER TABLE public.user_preference OWNER TO galaxydbuser;

--
-- Name: user_preference_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_preference_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_preference_id_seq OWNER TO galaxydbuser;

--
-- Name: user_preference_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_preference_id_seq OWNED BY public.user_preference.id;


--
-- Name: user_quota_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_quota_association (
    id integer NOT NULL,
    user_id integer,
    quota_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone
);


ALTER TABLE public.user_quota_association OWNER TO galaxydbuser;

--
-- Name: user_quota_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_quota_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_quota_association_id_seq OWNER TO galaxydbuser;

--
-- Name: user_quota_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_quota_association_id_seq OWNED BY public.user_quota_association.id;


--
-- Name: user_role_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.user_role_association (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    create_time timestamp without time zone,
    update_time timestamp without time zone
);


ALTER TABLE public.user_role_association OWNER TO galaxydbuser;

--
-- Name: user_role_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.user_role_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_role_association_id_seq OWNER TO galaxydbuser;

--
-- Name: user_role_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.user_role_association_id_seq OWNED BY public.user_role_association.id;


--
-- Name: validation_error; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.validation_error (
    id integer NOT NULL,
    dataset_id integer,
    message character varying(255),
    err_type character varying(64),
    attributes text
);


ALTER TABLE public.validation_error OWNER TO galaxydbuser;

--
-- Name: validation_error_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.validation_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.validation_error_id_seq OWNER TO galaxydbuser;

--
-- Name: validation_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.validation_error_id_seq OWNED BY public.validation_error.id;


--
-- Name: visualization; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    user_id integer NOT NULL,
    latest_revision_id integer,
    title text,
    type text,
    deleted boolean,
    importable boolean,
    slug text,
    published boolean,
    dbkey text
);


ALTER TABLE public.visualization OWNER TO galaxydbuser;

--
-- Name: visualization_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization_annotation_association (
    id integer NOT NULL,
    visualization_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.visualization_annotation_association OWNER TO galaxydbuser;

--
-- Name: visualization_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_annotation_association_id_seq OWNED BY public.visualization_annotation_association.id;


--
-- Name: visualization_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_id_seq OWNED BY public.visualization.id;


--
-- Name: visualization_rating_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization_rating_association (
    id integer NOT NULL,
    visualization_id integer,
    user_id integer,
    rating integer
);


ALTER TABLE public.visualization_rating_association OWNER TO galaxydbuser;

--
-- Name: visualization_rating_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_rating_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_rating_association_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_rating_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_rating_association_id_seq OWNED BY public.visualization_rating_association.id;


--
-- Name: visualization_revision; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization_revision (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    visualization_id integer NOT NULL,
    title text,
    config text,
    dbkey text
);


ALTER TABLE public.visualization_revision OWNER TO galaxydbuser;

--
-- Name: visualization_revision_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_revision_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_revision_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_revision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_revision_id_seq OWNED BY public.visualization_revision.id;


--
-- Name: visualization_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization_tag_association (
    id integer NOT NULL,
    visualization_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.visualization_tag_association OWNER TO galaxydbuser;

--
-- Name: visualization_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_tag_association_id_seq OWNED BY public.visualization_tag_association.id;


--
-- Name: visualization_user_share_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.visualization_user_share_association (
    id integer NOT NULL,
    visualization_id integer,
    user_id integer
);


ALTER TABLE public.visualization_user_share_association OWNER TO galaxydbuser;

--
-- Name: visualization_user_share_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.visualization_user_share_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visualization_user_share_association_id_seq OWNER TO galaxydbuser;

--
-- Name: visualization_user_share_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.visualization_user_share_association_id_seq OWNED BY public.visualization_user_share_association.id;


--
-- Name: worker_process; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.worker_process (
    id integer NOT NULL,
    server_name character varying(255),
    hostname character varying(255),
    update_time timestamp without time zone
);


ALTER TABLE public.worker_process OWNER TO galaxydbuser;

--
-- Name: worker_process_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.worker_process_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worker_process_id_seq OWNER TO galaxydbuser;

--
-- Name: worker_process_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.worker_process_id_seq OWNED BY public.worker_process.id;


--
-- Name: workflow; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    stored_workflow_id integer,
    name text,
    has_cycles boolean,
    has_errors boolean,
    uuid character(32),
    parent_workflow_id integer
);


ALTER TABLE public.workflow OWNER TO galaxydbuser;

--
-- Name: workflow_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_id_seq OWNED BY public.workflow.id;


--
-- Name: workflow_invocation; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    workflow_id integer NOT NULL,
    history_id integer,
    state character varying(64),
    scheduler character varying(255),
    handler character varying(255),
    uuid character(32)
);


ALTER TABLE public.workflow_invocation OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_id_seq OWNED BY public.workflow_invocation.id;


--
-- Name: workflow_invocation_output_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_output_dataset_association (
    id integer NOT NULL,
    workflow_invocation_id integer,
    workflow_step_id integer,
    dataset_id integer,
    workflow_output_id integer
);


ALTER TABLE public.workflow_invocation_output_dataset_association OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_output_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_output_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_output_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_output_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_output_dataset_association_id_seq OWNED BY public.workflow_invocation_output_dataset_association.id;


--
-- Name: workflow_invocation_output_dataset_collection_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_output_dataset_collection_association (
    id integer NOT NULL,
    workflow_invocation_id integer,
    workflow_step_id integer,
    dataset_collection_id integer,
    workflow_output_id integer
);


ALTER TABLE public.workflow_invocation_output_dataset_collection_association OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_output_dataset_collection_associatio_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_output_dataset_collection_associatio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_output_dataset_collection_associatio_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_output_dataset_collection_associatio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_output_dataset_collection_associatio_id_seq OWNED BY public.workflow_invocation_output_dataset_collection_association.id;


--
-- Name: workflow_invocation_step; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_step (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    workflow_invocation_id integer NOT NULL,
    workflow_step_id integer NOT NULL,
    job_id integer,
    action bytea,
    implicit_collection_jobs_id integer,
    state character varying(64)
);


ALTER TABLE public.workflow_invocation_step OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_step_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_step_id_seq OWNED BY public.workflow_invocation_step.id;


--
-- Name: workflow_invocation_step_output_dataset_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_step_output_dataset_association (
    id integer NOT NULL,
    workflow_invocation_step_id integer,
    dataset_id integer,
    output_name character varying(255)
);


ALTER TABLE public.workflow_invocation_step_output_dataset_association OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_output_dataset_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_step_output_dataset_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_step_output_dataset_association_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_output_dataset_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_step_output_dataset_association_id_seq OWNED BY public.workflow_invocation_step_output_dataset_association.id;


--
-- Name: workflow_invocation_step_output_dataset_collection_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_step_output_dataset_collection_association (
    id integer NOT NULL,
    workflow_invocation_step_id integer,
    workflow_step_id integer,
    dataset_collection_id integer,
    output_name character varying(255)
);


ALTER TABLE public.workflow_invocation_step_output_dataset_collection_association OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_output_dataset_collection_assoc_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_step_output_dataset_collection_assoc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_step_output_dataset_collection_assoc_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_step_output_dataset_collection_assoc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_step_output_dataset_collection_assoc_id_seq OWNED BY public.workflow_invocation_step_output_dataset_collection_association.id;


--
-- Name: workflow_invocation_to_subworkflow_invocation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_invocation_to_subworkflow_invocation_association (
    id integer NOT NULL,
    workflow_invocation_id integer,
    subworkflow_invocation_id integer,
    workflow_step_id integer
);


ALTER TABLE public.workflow_invocation_to_subworkflow_invocation_association OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_to_subworkflow_invocation_associatio_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_invocation_to_subworkflow_invocation_associatio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_invocation_to_subworkflow_invocation_associatio_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_invocation_to_subworkflow_invocation_associatio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_invocation_to_subworkflow_invocation_associatio_id_seq OWNED BY public.workflow_invocation_to_subworkflow_invocation_association.id;


--
-- Name: workflow_output; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_output (
    id integer NOT NULL,
    workflow_step_id integer NOT NULL,
    output_name character varying(255),
    label character varying(255),
    uuid character(32)
);


ALTER TABLE public.workflow_output OWNER TO galaxydbuser;

--
-- Name: workflow_output_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_output_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_output_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_output_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_output_id_seq OWNED BY public.workflow_output.id;


--
-- Name: workflow_request_input_parameters; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_request_input_parameters (
    id integer NOT NULL,
    workflow_invocation_id integer,
    name character varying(255),
    type character varying(255),
    value text
);


ALTER TABLE public.workflow_request_input_parameters OWNER TO galaxydbuser;

--
-- Name: workflow_request_input_parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_request_input_parameters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_request_input_parameters_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_request_input_parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_request_input_parameters_id_seq OWNED BY public.workflow_request_input_parameters.id;


--
-- Name: workflow_request_input_step_parameter; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_request_input_step_parameter (
    id integer NOT NULL,
    workflow_invocation_id integer,
    workflow_step_id integer,
    parameter_value bytea
);


ALTER TABLE public.workflow_request_input_step_parameter OWNER TO galaxydbuser;

--
-- Name: workflow_request_input_step_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_request_input_step_parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_request_input_step_parameter_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_request_input_step_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_request_input_step_parameter_id_seq OWNED BY public.workflow_request_input_step_parameter.id;


--
-- Name: workflow_request_step_states; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_request_step_states (
    id integer NOT NULL,
    workflow_invocation_id integer,
    workflow_step_id integer,
    value bytea
);


ALTER TABLE public.workflow_request_step_states OWNER TO galaxydbuser;

--
-- Name: workflow_request_step_states_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_request_step_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_request_step_states_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_request_step_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_request_step_states_id_seq OWNED BY public.workflow_request_step_states.id;


--
-- Name: workflow_request_to_input_collection_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_request_to_input_collection_dataset (
    id integer NOT NULL,
    name character varying(255),
    workflow_invocation_id integer,
    workflow_step_id integer,
    dataset_collection_id integer
);


ALTER TABLE public.workflow_request_to_input_collection_dataset OWNER TO galaxydbuser;

--
-- Name: workflow_request_to_input_collection_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_request_to_input_collection_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_request_to_input_collection_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_request_to_input_collection_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_request_to_input_collection_dataset_id_seq OWNED BY public.workflow_request_to_input_collection_dataset.id;


--
-- Name: workflow_request_to_input_dataset; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_request_to_input_dataset (
    id integer NOT NULL,
    name character varying(255),
    workflow_invocation_id integer,
    workflow_step_id integer,
    dataset_id integer
);


ALTER TABLE public.workflow_request_to_input_dataset OWNER TO galaxydbuser;

--
-- Name: workflow_request_to_input_dataset_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_request_to_input_dataset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_request_to_input_dataset_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_request_to_input_dataset_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_request_to_input_dataset_id_seq OWNED BY public.workflow_request_to_input_dataset.id;


--
-- Name: workflow_step; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_step (
    id integer NOT NULL,
    create_time timestamp without time zone,
    update_time timestamp without time zone,
    workflow_id integer NOT NULL,
    type character varying(64),
    tool_id text,
    tool_version text,
    tool_inputs bytea,
    tool_errors bytea,
    "position" bytea,
    config bytea,
    order_index integer,
    label character varying(255),
    uuid character(32),
    subworkflow_id integer,
    dynamic_tool_id integer
);


ALTER TABLE public.workflow_step OWNER TO galaxydbuser;

--
-- Name: workflow_step_annotation_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_step_annotation_association (
    id integer NOT NULL,
    workflow_step_id integer,
    user_id integer,
    annotation text
);


ALTER TABLE public.workflow_step_annotation_association OWNER TO galaxydbuser;

--
-- Name: workflow_step_annotation_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_step_annotation_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_step_annotation_association_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_step_annotation_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_step_annotation_association_id_seq OWNED BY public.workflow_step_annotation_association.id;


--
-- Name: workflow_step_connection; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_step_connection (
    id integer NOT NULL,
    output_step_id integer,
    input_step_input_id integer,
    output_name text,
    input_subworkflow_step_id integer
);


ALTER TABLE public.workflow_step_connection OWNER TO galaxydbuser;

--
-- Name: workflow_step_connection_id_seq1; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_step_connection_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_step_connection_id_seq1 OWNER TO galaxydbuser;

--
-- Name: workflow_step_connection_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_step_connection_id_seq1 OWNED BY public.workflow_step_connection.id;


--
-- Name: workflow_step_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_step_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_step_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_step_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_step_id_seq OWNED BY public.workflow_step.id;


--
-- Name: workflow_step_input; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_step_input (
    id integer NOT NULL,
    workflow_step_id integer,
    name text,
    merge_type text,
    scatter_type text,
    value_from bytea,
    value_from_type text,
    default_value bytea,
    default_value_set boolean,
    runtime_value boolean
);


ALTER TABLE public.workflow_step_input OWNER TO galaxydbuser;

--
-- Name: workflow_step_input_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_step_input_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_step_input_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_step_input_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_step_input_id_seq OWNED BY public.workflow_step_input.id;


--
-- Name: workflow_step_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_step_tag_association (
    id integer NOT NULL,
    workflow_step_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.workflow_step_tag_association OWNER TO galaxydbuser;

--
-- Name: workflow_step_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_step_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_step_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_step_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_step_tag_association_id_seq OWNED BY public.workflow_step_tag_association.id;


--
-- Name: workflow_tag_association; Type: TABLE; Schema: public; Owner: galaxydbuser
--

CREATE TABLE public.workflow_tag_association (
    id integer NOT NULL,
    workflow_id integer,
    tag_id integer,
    user_id integer,
    user_tname character varying(255),
    value character varying(255),
    user_value character varying(255)
);


ALTER TABLE public.workflow_tag_association OWNER TO galaxydbuser;

--
-- Name: workflow_tag_association_id_seq; Type: SEQUENCE; Schema: public; Owner: galaxydbuser
--

CREATE SEQUENCE public.workflow_tag_association_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workflow_tag_association_id_seq OWNER TO galaxydbuser;

--
-- Name: workflow_tag_association_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galaxydbuser
--

ALTER SEQUENCE public.workflow_tag_association_id_seq OWNED BY public.workflow_tag_association.id;


--
-- Name: api_keys id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.api_keys ALTER COLUMN id SET DEFAULT nextval('public.api_keys_id_seq'::regclass);


--
-- Name: cleanup_event id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_id_seq'::regclass);


--
-- Name: cleanup_event_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_dataset_association_id_seq'::regclass);


--
-- Name: cleanup_event_hda_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_hda_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_hda_association_id_seq'::regclass);


--
-- Name: cleanup_event_history_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_history_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_history_association_id_seq'::regclass);


--
-- Name: cleanup_event_icda_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_icda_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_icda_association_id_seq'::regclass);


--
-- Name: cleanup_event_ldda_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_ldda_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_ldda_association_id_seq'::regclass);


--
-- Name: cleanup_event_library_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_library_association_id_seq'::regclass);


--
-- Name: cleanup_event_library_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_library_dataset_association_id_seq'::regclass);


--
-- Name: cleanup_event_library_folder_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_folder_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_library_folder_association_id_seq'::regclass);


--
-- Name: cleanup_event_metadata_file_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_metadata_file_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_metadata_file_association_id_seq'::regclass);


--
-- Name: cleanup_event_user_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_user_association ALTER COLUMN id SET DEFAULT nextval('public.cleanup_event_user_association_id_seq'::regclass);


--
-- Name: cloudauthz id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cloudauthz ALTER COLUMN id SET DEFAULT nextval('public.cloudauthz_id_seq'::regclass);


--
-- Name: custos_authnz_token id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.custos_authnz_token ALTER COLUMN id SET DEFAULT nextval('public.custos_authnz_token_id_seq'::regclass);


--
-- Name: data_manager_history_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_history_association ALTER COLUMN id SET DEFAULT nextval('public.data_manager_history_association_id_seq'::regclass);


--
-- Name: data_manager_job_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_job_association ALTER COLUMN id SET DEFAULT nextval('public.data_manager_job_association_id_seq'::regclass);


--
-- Name: dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset ALTER COLUMN id SET DEFAULT nextval('public.dataset_id_seq'::regclass);


--
-- Name: dataset_collection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection ALTER COLUMN id SET DEFAULT nextval('public.dataset_collection_id_seq'::regclass);


--
-- Name: dataset_collection_element id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element ALTER COLUMN id SET DEFAULT nextval('public.dataset_collection_element_id_seq'::regclass);


--
-- Name: dataset_hash id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_hash ALTER COLUMN id SET DEFAULT nextval('public.dataset_hash_id_seq'::regclass);


--
-- Name: dataset_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_permissions ALTER COLUMN id SET DEFAULT nextval('public.dataset_permissions_id_seq'::regclass);


--
-- Name: dataset_source id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source ALTER COLUMN id SET DEFAULT nextval('public.dataset_source_id_seq'::regclass);


--
-- Name: dataset_source_hash id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source_hash ALTER COLUMN id SET DEFAULT nextval('public.dataset_source_hash_id_seq'::regclass);


--
-- Name: dataset_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_tag_association ALTER COLUMN id SET DEFAULT nextval('public.dataset_tag_association_id_seq'::regclass);


--
-- Name: default_history_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_history_permissions ALTER COLUMN id SET DEFAULT nextval('public.default_history_permissions_id_seq'::regclass);


--
-- Name: default_quota_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_quota_association ALTER COLUMN id SET DEFAULT nextval('public.default_quota_association_id_seq'::regclass);


--
-- Name: default_user_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.default_user_permissions_id_seq'::regclass);


--
-- Name: deferred_job id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.deferred_job ALTER COLUMN id SET DEFAULT nextval('public.deferred_job_id_seq'::regclass);


--
-- Name: dynamic_tool id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dynamic_tool ALTER COLUMN id SET DEFAULT nextval('public.dynamic_tool_id_seq'::regclass);


--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);


--
-- Name: extended_metadata id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.extended_metadata ALTER COLUMN id SET DEFAULT nextval('public.extended_metadata_id_seq'::regclass);


--
-- Name: extended_metadata_index id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.extended_metadata_index ALTER COLUMN id SET DEFAULT nextval('public.extended_metadata_index_id_seq'::regclass);


--
-- Name: external_service id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.external_service ALTER COLUMN id SET DEFAULT nextval('public.external_service_id_seq'::regclass);


--
-- Name: form_definition id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition ALTER COLUMN id SET DEFAULT nextval('public.form_definition_id_seq'::regclass);


--
-- Name: form_definition_current id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition_current ALTER COLUMN id SET DEFAULT nextval('public.form_definition_current_id_seq'::regclass);


--
-- Name: form_values id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_values ALTER COLUMN id SET DEFAULT nextval('public.form_values_id_seq'::regclass);


--
-- Name: galaxy_group id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_group ALTER COLUMN id SET DEFAULT nextval('public.galaxy_group_id_seq'::regclass);


--
-- Name: galaxy_session id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session ALTER COLUMN id SET DEFAULT nextval('public.galaxy_session_id_seq'::regclass);


--
-- Name: galaxy_session_to_history id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session_to_history ALTER COLUMN id SET DEFAULT nextval('public.galaxy_session_to_history_id_seq'::regclass);


--
-- Name: galaxy_user id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user ALTER COLUMN id SET DEFAULT nextval('public.galaxy_user_id_seq'::regclass);


--
-- Name: galaxy_user_openid id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user_openid ALTER COLUMN id SET DEFAULT nextval('public.galaxy_user_openid_id_seq'::regclass);


--
-- Name: genome_index_tool_data id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data ALTER COLUMN id SET DEFAULT nextval('public.genome_index_tool_data_id_seq'::regclass);


--
-- Name: group_quota_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_quota_association ALTER COLUMN id SET DEFAULT nextval('public.group_quota_association_id_seq'::regclass);


--
-- Name: group_role_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_role_association ALTER COLUMN id SET DEFAULT nextval('public.group_role_association_id_seq'::regclass);


--
-- Name: history id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history ALTER COLUMN id SET DEFAULT nextval('public.history_id_seq'::regclass);


--
-- Name: history_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.history_annotation_association_id_seq'::regclass);


--
-- Name: history_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_id_seq'::regclass);


--
-- Name: history_dataset_association_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_annotation_association_id_seq'::regclass);


--
-- Name: history_dataset_association_display_at_authorization id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_display_at_authorization ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_display_at_authorization_id_seq'::regclass);


--
-- Name: history_dataset_association_history id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_history ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_history_id_seq'::regclass);


--
-- Name: history_dataset_association_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_rating_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_rating_association_id_seq'::regclass);


--
-- Name: history_dataset_association_subset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_subset ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_subset_id_seq'::regclass);


--
-- Name: history_dataset_association_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_tag_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_association_tag_association_id_seq'::regclass);


--
-- Name: history_dataset_collection_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_collection_annotation_association_id_seq'::regclass);


--
-- Name: history_dataset_collection_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_collection_association_id_seq'::regclass);


--
-- Name: history_dataset_collection_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_rating_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_collection_rating_association_id_seq'::regclass);


--
-- Name: history_dataset_collection_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_tag_association ALTER COLUMN id SET DEFAULT nextval('public.history_dataset_collection_tag_association_id_seq'::regclass);


--
-- Name: history_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_rating_association ALTER COLUMN id SET DEFAULT nextval('public.history_rating_association_id_seq'::regclass);


--
-- Name: history_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_tag_association ALTER COLUMN id SET DEFAULT nextval('public.history_tag_association_id_seq'::regclass);


--
-- Name: history_user_share_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_user_share_association ALTER COLUMN id SET DEFAULT nextval('public.history_user_share_association_id_seq'::regclass);


--
-- Name: implicit_collection_jobs id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs ALTER COLUMN id SET DEFAULT nextval('public.implicit_collection_jobs_id_seq'::regclass);


--
-- Name: implicit_collection_jobs_job_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs_job_association ALTER COLUMN id SET DEFAULT nextval('public.implicit_collection_jobs_job_association_id_seq'::regclass);


--
-- Name: implicitly_converted_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.implicitly_converted_dataset_association_id_seq'::regclass);


--
-- Name: implicitly_created_dataset_collection_inputs id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_created_dataset_collection_inputs ALTER COLUMN id SET DEFAULT nextval('public.implicitly_created_dataset_collection_inputs_id_seq'::regclass);


--
-- Name: job id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job ALTER COLUMN id SET DEFAULT nextval('public.job_id_seq'::regclass);


--
-- Name: job_export_history_archive id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_export_history_archive ALTER COLUMN id SET DEFAULT nextval('public.job_export_history_archive_id_seq'::regclass);


--
-- Name: job_external_output_metadata id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_external_output_metadata ALTER COLUMN id SET DEFAULT nextval('public.job_external_output_metadata_id_seq'::regclass);


--
-- Name: job_import_history_archive id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_import_history_archive ALTER COLUMN id SET DEFAULT nextval('public.job_import_history_archive_id_seq'::regclass);


--
-- Name: job_metric_numeric id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_numeric ALTER COLUMN id SET DEFAULT nextval('public.job_metric_numeric_id_seq'::regclass);


--
-- Name: job_metric_text id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_text ALTER COLUMN id SET DEFAULT nextval('public.job_metric_text_id_seq'::regclass);


--
-- Name: job_parameter id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_parameter ALTER COLUMN id SET DEFAULT nextval('public.job_parameter_id_seq'::regclass);


--
-- Name: job_state_history id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_state_history ALTER COLUMN id SET DEFAULT nextval('public.job_state_history_id_seq'::regclass);


--
-- Name: job_to_implicit_output_dataset_collection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_implicit_output_dataset_collection ALTER COLUMN id SET DEFAULT nextval('public.job_to_implicit_output_dataset_collection_id_seq'::regclass);


--
-- Name: job_to_input_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset ALTER COLUMN id SET DEFAULT nextval('public.job_to_input_dataset_id_seq'::regclass);


--
-- Name: job_to_input_dataset_collection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset_collection ALTER COLUMN id SET DEFAULT nextval('public.job_to_input_dataset_collection_id_seq'::regclass);


--
-- Name: job_to_input_library_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_library_dataset ALTER COLUMN id SET DEFAULT nextval('public.job_to_input_library_dataset_id_seq'::regclass);


--
-- Name: job_to_output_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset ALTER COLUMN id SET DEFAULT nextval('public.job_to_output_dataset_id_seq'::regclass);


--
-- Name: job_to_output_dataset_collection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset_collection ALTER COLUMN id SET DEFAULT nextval('public.job_to_output_dataset_collection_id_seq'::regclass);


--
-- Name: job_to_output_library_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_library_dataset ALTER COLUMN id SET DEFAULT nextval('public.job_to_output_library_dataset_id_seq'::regclass);


--
-- Name: library id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library ALTER COLUMN id SET DEFAULT nextval('public.library_id_seq'::regclass);


--
-- Name: library_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_id_seq'::regclass);


--
-- Name: library_dataset_collection_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_collection_annotation_association_id_seq'::regclass);


--
-- Name: library_dataset_collection_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_collection_association_id_seq'::regclass);


--
-- Name: library_dataset_collection_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_rating_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_collection_rating_association_id_seq'::regclass);


--
-- Name: library_dataset_collection_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_tag_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_collection_tag_association_id_seq'::regclass);


--
-- Name: library_dataset_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_dataset_association_id_seq'::regclass);


--
-- Name: library_dataset_dataset_association_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_permissions ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_dataset_association_permissions_id_seq'::regclass);


--
-- Name: library_dataset_dataset_association_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_tag_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_dataset_association_tag_association_id_seq'::regclass);


--
-- Name: library_dataset_dataset_info_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_info_association ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_dataset_info_association_id_seq'::regclass);


--
-- Name: library_dataset_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_permissions ALTER COLUMN id SET DEFAULT nextval('public.library_dataset_permissions_id_seq'::regclass);


--
-- Name: library_folder id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder ALTER COLUMN id SET DEFAULT nextval('public.library_folder_id_seq'::regclass);


--
-- Name: library_folder_info_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_info_association ALTER COLUMN id SET DEFAULT nextval('public.library_folder_info_association_id_seq'::regclass);


--
-- Name: library_folder_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_permissions ALTER COLUMN id SET DEFAULT nextval('public.library_folder_permissions_id_seq'::regclass);


--
-- Name: library_info_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_info_association ALTER COLUMN id SET DEFAULT nextval('public.library_info_association_id_seq'::regclass);


--
-- Name: library_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_permissions ALTER COLUMN id SET DEFAULT nextval('public.library_permissions_id_seq'::regclass);


--
-- Name: metadata_file id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.metadata_file ALTER COLUMN id SET DEFAULT nextval('public.metadata_file_id_seq'::regclass);


--
-- Name: oidc_user_authnz_tokens id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.oidc_user_authnz_tokens ALTER COLUMN id SET DEFAULT nextval('public.oidc_user_authnz_tokens_id_seq'::regclass);


--
-- Name: page id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page ALTER COLUMN id SET DEFAULT nextval('public.page_id_seq'::regclass);


--
-- Name: page_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.page_annotation_association_id_seq'::regclass);


--
-- Name: page_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_rating_association ALTER COLUMN id SET DEFAULT nextval('public.page_rating_association_id_seq'::regclass);


--
-- Name: page_revision id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_revision ALTER COLUMN id SET DEFAULT nextval('public.page_revision_id_seq'::regclass);


--
-- Name: page_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_tag_association ALTER COLUMN id SET DEFAULT nextval('public.page_tag_association_id_seq'::regclass);


--
-- Name: page_user_share_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_user_share_association ALTER COLUMN id SET DEFAULT nextval('public.page_user_share_association_id_seq'::regclass);


--
-- Name: post_job_action id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action ALTER COLUMN id SET DEFAULT nextval('public.post_job_action_id_seq'::regclass);


--
-- Name: post_job_action_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action_association ALTER COLUMN id SET DEFAULT nextval('public.post_job_action_association_id_seq'::regclass);


--
-- Name: psa_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_association ALTER COLUMN id SET DEFAULT nextval('public.psa_association_id_seq'::regclass);


--
-- Name: psa_code id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_code ALTER COLUMN id SET DEFAULT nextval('public.psa_code_id_seq'::regclass);


--
-- Name: psa_nonce id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_nonce ALTER COLUMN id SET DEFAULT nextval('public.psa_nonce_id_seq'::regclass);


--
-- Name: psa_partial id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_partial ALTER COLUMN id SET DEFAULT nextval('public.psa_partial_id_seq'::regclass);


--
-- Name: quota id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.quota ALTER COLUMN id SET DEFAULT nextval('public.quota_id_seq'::regclass);


--
-- Name: repository_dependency id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_dependency ALTER COLUMN id SET DEFAULT nextval('public.repository_dependency_id_seq'::regclass);


--
-- Name: repository_repository_dependency_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_repository_dependency_association ALTER COLUMN id SET DEFAULT nextval('public.repository_repository_dependency_association_id_seq'::regclass);


--
-- Name: request id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request ALTER COLUMN id SET DEFAULT nextval('public.request_id_seq'::regclass);


--
-- Name: request_event id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_event ALTER COLUMN id SET DEFAULT nextval('public.request_event_id_seq'::regclass);


--
-- Name: request_type id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type ALTER COLUMN id SET DEFAULT nextval('public.request_type_id_seq'::regclass);


--
-- Name: request_type_external_service_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_external_service_association ALTER COLUMN id SET DEFAULT nextval('public.request_type_external_service_association_id_seq'::regclass);


--
-- Name: request_type_permissions id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_permissions ALTER COLUMN id SET DEFAULT nextval('public.request_type_permissions_id_seq'::regclass);


--
-- Name: request_type_run_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_run_association ALTER COLUMN id SET DEFAULT nextval('public.request_type_run_association_id_seq'::regclass);


--
-- Name: role id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);


--
-- Name: run id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.run ALTER COLUMN id SET DEFAULT nextval('public.run_id_seq'::regclass);


--
-- Name: sample id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample ALTER COLUMN id SET DEFAULT nextval('public.sample_id_seq'::regclass);


--
-- Name: sample_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_dataset ALTER COLUMN id SET DEFAULT nextval('public.sample_dataset_id_seq'::regclass);


--
-- Name: sample_event id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_event ALTER COLUMN id SET DEFAULT nextval('public.sample_event_id_seq'::regclass);


--
-- Name: sample_run_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_run_association ALTER COLUMN id SET DEFAULT nextval('public.sample_run_association_id_seq'::regclass);


--
-- Name: sample_state id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_state ALTER COLUMN id SET DEFAULT nextval('public.sample_state_id_seq'::regclass);


--
-- Name: stored_workflow id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_id_seq'::regclass);


--
-- Name: stored_workflow_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_annotation_association_id_seq'::regclass);


--
-- Name: stored_workflow_menu_entry id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_menu_entry ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_menu_entry_id_seq'::regclass);


--
-- Name: stored_workflow_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_rating_association ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_rating_association_id_seq'::regclass);


--
-- Name: stored_workflow_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_tag_association ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_tag_association_id_seq'::regclass);


--
-- Name: stored_workflow_user_share_connection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_user_share_connection ALTER COLUMN id SET DEFAULT nextval('public.stored_workflow_user_share_connection_id_seq'::regclass);


--
-- Name: tag id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tag ALTER COLUMN id SET DEFAULT nextval('public.tag_id_seq'::regclass);


--
-- Name: task id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task ALTER COLUMN id SET DEFAULT nextval('public.task_id_seq'::regclass);


--
-- Name: task_metric_numeric id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_numeric ALTER COLUMN id SET DEFAULT nextval('public.task_metric_numeric_id_seq'::regclass);


--
-- Name: task_metric_text id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_text ALTER COLUMN id SET DEFAULT nextval('public.task_metric_text_id_seq'::regclass);


--
-- Name: tool_dependency id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_dependency ALTER COLUMN id SET DEFAULT nextval('public.tool_dependency_id_seq'::regclass);


--
-- Name: tool_shed_repository id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_shed_repository ALTER COLUMN id SET DEFAULT nextval('public.tool_shed_repository_id_seq'::regclass);


--
-- Name: tool_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_tag_association ALTER COLUMN id SET DEFAULT nextval('public.tool_tag_association_id_seq'::regclass);


--
-- Name: tool_version id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version ALTER COLUMN id SET DEFAULT nextval('public.tool_version_id_seq'::regclass);


--
-- Name: tool_version_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version_association ALTER COLUMN id SET DEFAULT nextval('public.tool_version_association_id_seq'::regclass);


--
-- Name: transfer_job id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.transfer_job ALTER COLUMN id SET DEFAULT nextval('public.transfer_job_id_seq'::regclass);


--
-- Name: user_action id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_action ALTER COLUMN id SET DEFAULT nextval('public.user_action_id_seq'::regclass);


--
-- Name: user_address id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_address ALTER COLUMN id SET DEFAULT nextval('public.user_address_id_seq'::regclass);


--
-- Name: user_group_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_group_association ALTER COLUMN id SET DEFAULT nextval('public.user_group_association_id_seq'::regclass);


--
-- Name: user_preference id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_preference ALTER COLUMN id SET DEFAULT nextval('public.user_preference_id_seq'::regclass);


--
-- Name: user_quota_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_quota_association ALTER COLUMN id SET DEFAULT nextval('public.user_quota_association_id_seq'::regclass);


--
-- Name: user_role_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_role_association ALTER COLUMN id SET DEFAULT nextval('public.user_role_association_id_seq'::regclass);


--
-- Name: validation_error id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.validation_error ALTER COLUMN id SET DEFAULT nextval('public.validation_error_id_seq'::regclass);


--
-- Name: visualization id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization ALTER COLUMN id SET DEFAULT nextval('public.visualization_id_seq'::regclass);


--
-- Name: visualization_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.visualization_annotation_association_id_seq'::regclass);


--
-- Name: visualization_rating_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_rating_association ALTER COLUMN id SET DEFAULT nextval('public.visualization_rating_association_id_seq'::regclass);


--
-- Name: visualization_revision id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_revision ALTER COLUMN id SET DEFAULT nextval('public.visualization_revision_id_seq'::regclass);


--
-- Name: visualization_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_tag_association ALTER COLUMN id SET DEFAULT nextval('public.visualization_tag_association_id_seq'::regclass);


--
-- Name: visualization_user_share_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_user_share_association ALTER COLUMN id SET DEFAULT nextval('public.visualization_user_share_association_id_seq'::regclass);


--
-- Name: worker_process id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.worker_process ALTER COLUMN id SET DEFAULT nextval('public.worker_process_id_seq'::regclass);


--
-- Name: workflow id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow ALTER COLUMN id SET DEFAULT nextval('public.workflow_id_seq'::regclass);


--
-- Name: workflow_invocation id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_id_seq'::regclass);


--
-- Name: workflow_invocation_output_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_output_dataset_association_id_seq'::regclass);


--
-- Name: workflow_invocation_output_dataset_collection_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_output_dataset_collection_associatio_id_seq'::regclass);


--
-- Name: workflow_invocation_step id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_step_id_seq'::regclass);


--
-- Name: workflow_invocation_step_output_dataset_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_step_output_dataset_association_id_seq'::regclass);


--
-- Name: workflow_invocation_step_output_dataset_collection_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_collection_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_step_output_dataset_collection_assoc_id_seq'::regclass);


--
-- Name: workflow_invocation_to_subworkflow_invocation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_to_subworkflow_invocation_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_invocation_to_subworkflow_invocation_associatio_id_seq'::regclass);


--
-- Name: workflow_output id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_output ALTER COLUMN id SET DEFAULT nextval('public.workflow_output_id_seq'::regclass);


--
-- Name: workflow_request_input_parameters id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_parameters ALTER COLUMN id SET DEFAULT nextval('public.workflow_request_input_parameters_id_seq'::regclass);


--
-- Name: workflow_request_input_step_parameter id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_step_parameter ALTER COLUMN id SET DEFAULT nextval('public.workflow_request_input_step_parameter_id_seq'::regclass);


--
-- Name: workflow_request_step_states id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_step_states ALTER COLUMN id SET DEFAULT nextval('public.workflow_request_step_states_id_seq'::regclass);


--
-- Name: workflow_request_to_input_collection_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_collection_dataset ALTER COLUMN id SET DEFAULT nextval('public.workflow_request_to_input_collection_dataset_id_seq'::regclass);


--
-- Name: workflow_request_to_input_dataset id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_dataset ALTER COLUMN id SET DEFAULT nextval('public.workflow_request_to_input_dataset_id_seq'::regclass);


--
-- Name: workflow_step id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step ALTER COLUMN id SET DEFAULT nextval('public.workflow_step_id_seq'::regclass);


--
-- Name: workflow_step_annotation_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_annotation_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_step_annotation_association_id_seq'::regclass);


--
-- Name: workflow_step_connection id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_connection ALTER COLUMN id SET DEFAULT nextval('public.workflow_step_connection_id_seq1'::regclass);


--
-- Name: workflow_step_input id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_input ALTER COLUMN id SET DEFAULT nextval('public.workflow_step_input_id_seq'::regclass);


--
-- Name: workflow_step_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_tag_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_step_tag_association_id_seq'::regclass);


--
-- Name: workflow_tag_association id; Type: DEFAULT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_tag_association ALTER COLUMN id SET DEFAULT nextval('public.workflow_tag_association_id_seq'::regclass);


--
-- Data for Name: api_keys; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.api_keys (id, create_time, user_id, key) FROM stdin;
\.


--
-- Data for Name: cleanup_event; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event (id, create_time, message) FROM stdin;
\.


--
-- Data for Name: cleanup_event_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_dataset_association (id, create_time, cleanup_event_id, dataset_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_hda_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_hda_association (id, create_time, cleanup_event_id, hda_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_history_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_history_association (id, create_time, cleanup_event_id, history_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_icda_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_icda_association (id, create_time, cleanup_event_id, icda_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_ldda_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_ldda_association (id, create_time, cleanup_event_id, ldda_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_library_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_library_association (id, create_time, cleanup_event_id, library_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_library_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_library_dataset_association (id, create_time, cleanup_event_id, library_dataset_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_library_folder_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_library_folder_association (id, create_time, cleanup_event_id, library_folder_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_metadata_file_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_metadata_file_association (id, create_time, cleanup_event_id, metadata_file_id) FROM stdin;
\.


--
-- Data for Name: cleanup_event_user_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cleanup_event_user_association (id, create_time, cleanup_event_id, user_id) FROM stdin;
\.


--
-- Data for Name: cloudauthz; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.cloudauthz (id, user_id, provider, config, authn_id, tokens, last_update, last_activity, description, create_time) FROM stdin;
\.


--
-- Data for Name: custos_authnz_token; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.custos_authnz_token (id, user_id, external_user_id, provider, access_token, id_token, refresh_token, expiration_time, refresh_expiration_time) FROM stdin;
\.


--
-- Data for Name: data_manager_history_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.data_manager_history_association (id, create_time, update_time, history_id, user_id) FROM stdin;
\.


--
-- Data for Name: data_manager_job_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.data_manager_job_association (id, create_time, update_time, job_id, data_manager_id) FROM stdin;
\.


--
-- Data for Name: dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset (id, create_time, update_time, state, deleted, purged, purgable, external_filename, _extra_files_path, file_size, total_size, object_store_id, uuid) FROM stdin;
\.


--
-- Data for Name: dataset_collection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_collection (id, collection_type, create_time, update_time, populated_state, populated_state_message, element_count) FROM stdin;
\.


--
-- Data for Name: dataset_collection_element; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_collection_element (id, dataset_collection_id, hda_id, ldda_id, child_collection_id, element_index, element_identifier) FROM stdin;
\.


--
-- Data for Name: dataset_hash; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_hash (id, dataset_id, hash_function, hash_value, extra_files_path) FROM stdin;
\.


--
-- Data for Name: dataset_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_permissions (id, create_time, update_time, action, dataset_id, role_id) FROM stdin;
\.


--
-- Data for Name: dataset_source; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_source (id, dataset_id, source_uri, extra_files_path, transform) FROM stdin;
\.


--
-- Data for Name: dataset_source_hash; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_source_hash (id, dataset_source_id, hash_function, hash_value) FROM stdin;
\.


--
-- Data for Name: dataset_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dataset_tag_association (id, dataset_id, tag_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: default_history_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.default_history_permissions (id, history_id, action, role_id) FROM stdin;
\.


--
-- Data for Name: default_quota_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.default_quota_association (id, create_time, update_time, type, quota_id) FROM stdin;
\.


--
-- Data for Name: default_user_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.default_user_permissions (id, user_id, action, role_id) FROM stdin;
\.


--
-- Data for Name: deferred_job; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.deferred_job (id, create_time, update_time, state, plugin, params) FROM stdin;
\.


--
-- Data for Name: dynamic_tool; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.dynamic_tool (id, uuid, create_time, update_time, tool_id, tool_version, tool_format, tool_path, tool_directory, hidden, active, value) FROM stdin;
\.


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.event (id, create_time, update_time, history_id, user_id, message, session_id, tool_id) FROM stdin;
\.


--
-- Data for Name: extended_metadata; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.extended_metadata (id, data) FROM stdin;
\.


--
-- Data for Name: extended_metadata_index; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.extended_metadata_index (id, extended_metadata_id, path, value) FROM stdin;
\.


--
-- Data for Name: external_service; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.external_service (id, create_time, update_time, name, description, version, form_definition_id, form_values_id, deleted, external_service_type_id) FROM stdin;
\.


--
-- Data for Name: form_definition; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.form_definition (id, create_time, update_time, name, "desc", form_definition_current_id, fields, type, layout) FROM stdin;
\.


--
-- Data for Name: form_definition_current; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.form_definition_current (id, create_time, update_time, latest_form_id, deleted) FROM stdin;
\.


--
-- Data for Name: form_values; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.form_values (id, create_time, update_time, form_definition_id, content) FROM stdin;
\.


--
-- Data for Name: galaxy_group; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.galaxy_group (id, create_time, update_time, name, deleted) FROM stdin;
\.


--
-- Data for Name: galaxy_session; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.galaxy_session (id, create_time, update_time, user_id, remote_host, remote_addr, referer, current_history_id, session_key, is_valid, prev_session_id, disk_usage, last_action) FROM stdin;
1	2019-05-16 22:32:51.140631	2019-05-16 22:32:52.030694	\N	172.20.0.1	172.20.0.1	\N	1	ff5dc3ff04425068ac567db5cfe5d45e	t	\N	\N	2019-05-16 22:32:51.135358
\.


--
-- Data for Name: galaxy_session_to_history; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.galaxy_session_to_history (id, create_time, session_id, history_id) FROM stdin;
1	2019-05-16 22:32:52.032429	1	1
\.


--
-- Data for Name: galaxy_user; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.galaxy_user (id, create_time, update_time, email, password, external, deleted, purged, username, form_values_id, disk_usage, activation_token, active, last_password_change) FROM stdin;
\.


--
-- Data for Name: galaxy_user_openid; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.galaxy_user_openid (id, create_time, update_time, session_id, user_id, openid, provider) FROM stdin;
\.


--
-- Data for Name: genome_index_tool_data; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.genome_index_tool_data (id, job_id, dataset_id, deferred_job_id, transfer_job_id, fasta_path, created_time, modified_time, indexer, user_id) FROM stdin;
\.


--
-- Data for Name: group_quota_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.group_quota_association (id, group_id, quota_id, create_time, update_time) FROM stdin;
\.


--
-- Data for Name: group_role_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.group_role_association (id, group_id, role_id, create_time, update_time) FROM stdin;
\.


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history (id, create_time, update_time, user_id, name, hid_counter, deleted, purged, genome_build, importable, slug, published, importing) FROM stdin;
1	2019-05-16 22:32:52.025253	2019-05-16 22:32:52.025262	\N	Unnamed history	1	f	f	?	f	\N	f	f
\.


--
-- Data for Name: history_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_annotation_association (id, history_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: history_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association (id, history_id, dataset_id, create_time, update_time, copied_from_history_dataset_association_id, hid, name, info, blurb, peek, extension, metadata, parent_id, designation, deleted, visible, copied_from_library_dataset_dataset_association_id, state, purged, tool_version, extended_metadata_id, hidden_beneath_collection_instance_id, version) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_annotation_association (id, history_dataset_association_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_display_at_authorization; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_display_at_authorization (id, create_time, update_time, history_dataset_association_id, user_id, site) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_history; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_history (id, history_dataset_association_id, update_time, version, name, extension, metadata, extended_metadata_id) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_rating_association (id, history_dataset_association_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_subset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_subset (id, history_dataset_association_id, history_dataset_association_subset_id, location) FROM stdin;
\.


--
-- Data for Name: history_dataset_association_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_association_tag_association (id, history_dataset_association_id, tag_id, user_tname, value, user_value, user_id) FROM stdin;
\.


--
-- Data for Name: history_dataset_collection_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_collection_annotation_association (id, history_dataset_collection_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: history_dataset_collection_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_collection_association (id, collection_id, history_id, hid, name, deleted, visible, copied_from_history_dataset_collection_association_id, implicit_output_name, implicit_collection_jobs_id, job_id) FROM stdin;
\.


--
-- Data for Name: history_dataset_collection_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_collection_rating_association (id, history_dataset_collection_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: history_dataset_collection_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_dataset_collection_tag_association (id, history_dataset_collection_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: history_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_rating_association (id, history_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: history_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_tag_association (id, history_id, tag_id, user_tname, value, user_value, user_id) FROM stdin;
\.


--
-- Data for Name: history_user_share_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.history_user_share_association (id, history_id, user_id) FROM stdin;
\.


--
-- Data for Name: implicit_collection_jobs; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.implicit_collection_jobs (id, populated_state) FROM stdin;
\.


--
-- Data for Name: implicit_collection_jobs_job_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.implicit_collection_jobs_job_association (implicit_collection_jobs_id, id, job_id, order_index) FROM stdin;
\.


--
-- Data for Name: implicitly_converted_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.implicitly_converted_dataset_association (id, create_time, update_time, hda_id, hda_parent_id, deleted, metadata_safe, type, ldda_parent_id, ldda_id) FROM stdin;
\.


--
-- Data for Name: implicitly_created_dataset_collection_inputs; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.implicitly_created_dataset_collection_inputs (id, dataset_collection_id, input_dataset_collection_id, name) FROM stdin;
\.


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job (id, create_time, update_time, history_id, tool_id, tool_version, state, info, command_line, param_filename, runner_name, tool_stdout, tool_stderr, traceback, session_id, job_runner_name, job_runner_external_id, library_folder_id, user_id, imported, object_store_id, params, handler, exit_code, destination_id, destination_params, dependencies, copied_from_job_id, job_messages, job_stdout, job_stderr, dynamic_tool_id) FROM stdin;
\.


--
-- Data for Name: job_export_history_archive; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_export_history_archive (id, job_id, history_id, dataset_id, compressed, history_attrs_filename, datasets_attrs_filename, jobs_attrs_filename) FROM stdin;
\.


--
-- Data for Name: job_external_output_metadata; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_external_output_metadata (id, job_id, history_dataset_association_id, library_dataset_dataset_association_id, filename_in, filename_out, filename_results_code, filename_kwds, job_runner_external_pid, filename_override_metadata, is_valid) FROM stdin;
\.


--
-- Data for Name: job_import_history_archive; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_import_history_archive (id, job_id, history_id, archive_dir) FROM stdin;
\.


--
-- Data for Name: job_metric_numeric; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_metric_numeric (id, job_id, plugin, metric_name, metric_value) FROM stdin;
\.


--
-- Data for Name: job_metric_text; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_metric_text (id, job_id, plugin, metric_name, metric_value) FROM stdin;
\.


--
-- Data for Name: job_parameter; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_parameter (id, job_id, name, value) FROM stdin;
\.


--
-- Data for Name: job_state_history; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_state_history (id, create_time, update_time, job_id, state, info) FROM stdin;
\.


--
-- Data for Name: job_to_implicit_output_dataset_collection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_implicit_output_dataset_collection (id, job_id, dataset_collection_id, name) FROM stdin;
\.


--
-- Data for Name: job_to_input_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_input_dataset (id, job_id, dataset_id, name, dataset_version) FROM stdin;
\.


--
-- Data for Name: job_to_input_dataset_collection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_input_dataset_collection (id, job_id, dataset_collection_id, name) FROM stdin;
\.


--
-- Data for Name: job_to_input_library_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_input_library_dataset (id, job_id, ldda_id, name) FROM stdin;
\.


--
-- Data for Name: job_to_output_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_output_dataset (id, job_id, dataset_id, name) FROM stdin;
\.


--
-- Data for Name: job_to_output_dataset_collection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_output_dataset_collection (id, job_id, dataset_collection_id, name) FROM stdin;
\.


--
-- Data for Name: job_to_output_library_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.job_to_output_library_dataset (id, job_id, ldda_id, name) FROM stdin;
\.


--
-- Data for Name: kombu_message; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.kombu_message (id, visible, "timestamp", payload, version, queue_id) FROM stdin;
\.


--
-- Data for Name: kombu_queue; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.kombu_queue (id, name) FROM stdin;
1	control.main.web.1@5fe1b3a16716
\.


--
-- Data for Name: library; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library (id, root_folder_id, create_time, update_time, name, deleted, purged, description, synopsis) FROM stdin;
\.


--
-- Data for Name: library_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset (id, library_dataset_dataset_association_id, folder_id, order_id, create_time, update_time, name, info, deleted, purged) FROM stdin;
\.


--
-- Data for Name: library_dataset_collection_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_collection_annotation_association (id, library_dataset_collection_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: library_dataset_collection_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_collection_association (id, collection_id, name, deleted, folder_id) FROM stdin;
\.


--
-- Data for Name: library_dataset_collection_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_collection_rating_association (id, library_dataset_collection_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: library_dataset_collection_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_collection_tag_association (id, library_dataset_collection_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: library_dataset_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_dataset_association (id, library_dataset_id, dataset_id, create_time, update_time, copied_from_history_dataset_association_id, copied_from_library_dataset_dataset_association_id, name, info, blurb, peek, extension, metadata, parent_id, designation, deleted, visible, user_id, message, state, tool_version, extended_metadata_id) FROM stdin;
\.


--
-- Data for Name: library_dataset_dataset_association_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_dataset_association_permissions (id, create_time, update_time, action, library_dataset_dataset_association_id, role_id) FROM stdin;
\.


--
-- Data for Name: library_dataset_dataset_association_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_dataset_association_tag_association (id, library_dataset_dataset_association_id, tag_id, user_tname, value, user_value, user_id) FROM stdin;
\.


--
-- Data for Name: library_dataset_dataset_info_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_dataset_info_association (id, library_dataset_dataset_association_id, form_definition_id, form_values_id, deleted) FROM stdin;
\.


--
-- Data for Name: library_dataset_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_dataset_permissions (id, create_time, update_time, action, library_dataset_id, role_id) FROM stdin;
\.


--
-- Data for Name: library_folder; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_folder (id, parent_id, create_time, update_time, name, description, order_id, item_count, deleted, purged, genome_build) FROM stdin;
\.


--
-- Data for Name: library_folder_info_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_folder_info_association (id, library_folder_id, form_definition_id, form_values_id, deleted, inheritable) FROM stdin;
\.


--
-- Data for Name: library_folder_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_folder_permissions (id, create_time, update_time, action, library_folder_id, role_id) FROM stdin;
\.


--
-- Data for Name: library_info_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_info_association (id, library_id, form_definition_id, form_values_id, deleted, inheritable) FROM stdin;
\.


--
-- Data for Name: library_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.library_permissions (id, create_time, update_time, action, library_id, role_id) FROM stdin;
\.


--
-- Data for Name: metadata_file; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.metadata_file (id, name, hda_id, create_time, update_time, deleted, purged, lda_id, object_store_id, uuid) FROM stdin;
\.


--
-- Data for Name: migrate_tools; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.migrate_tools (repository_id, repository_path, version) FROM stdin;
GalaxyTools	lib/tool_shed/galaxy_install/migrate	1
\.


--
-- Data for Name: migrate_version; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.migrate_version (repository_id, repository_path, version) FROM stdin;
Galaxy	lib/galaxy/model/migrate	153
\.


--
-- Data for Name: oidc_user_authnz_tokens; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.oidc_user_authnz_tokens (id, user_id, uid, provider, extra_data, lifetime, assoc_type) FROM stdin;
\.


--
-- Data for Name: page; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page (id, create_time, update_time, user_id, latest_revision_id, title, slug, published, deleted, importable) FROM stdin;
\.


--
-- Data for Name: page_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page_annotation_association (id, page_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: page_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page_rating_association (id, page_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: page_revision; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page_revision (id, create_time, update_time, page_id, title, content) FROM stdin;
\.


--
-- Data for Name: page_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page_tag_association (id, page_id, tag_id, user_tname, value, user_value, user_id) FROM stdin;
\.


--
-- Data for Name: page_user_share_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.page_user_share_association (id, page_id, user_id) FROM stdin;
\.


--
-- Data for Name: password_reset_token; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.password_reset_token (token, expiration_time, user_id) FROM stdin;
\.


--
-- Data for Name: post_job_action; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.post_job_action (id, workflow_step_id, action_type, output_name, action_arguments) FROM stdin;
\.


--
-- Data for Name: post_job_action_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.post_job_action_association (id, post_job_action_id, job_id) FROM stdin;
\.


--
-- Data for Name: psa_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.psa_association (id, server_url, handle, secret, issued, lifetime, assoc_type) FROM stdin;
\.


--
-- Data for Name: psa_code; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.psa_code (id, email, code) FROM stdin;
\.


--
-- Data for Name: psa_nonce; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.psa_nonce (id, server_url, "timestamp", salt) FROM stdin;
\.


--
-- Data for Name: psa_partial; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.psa_partial (id, token, data, next_step, backend) FROM stdin;
\.


--
-- Data for Name: quota; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.quota (id, create_time, update_time, name, description, bytes, operation, deleted) FROM stdin;
\.


--
-- Data for Name: repository_dependency; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.repository_dependency (id, create_time, update_time, tool_shed_repository_id) FROM stdin;
\.


--
-- Data for Name: repository_repository_dependency_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.repository_repository_dependency_association (id, create_time, update_time, tool_shed_repository_id, repository_dependency_id) FROM stdin;
\.


--
-- Data for Name: request; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request (id, create_time, update_time, name, "desc", form_values_id, request_type_id, user_id, deleted, notification) FROM stdin;
\.


--
-- Data for Name: request_event; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request_event (id, create_time, update_time, request_id, state, comment) FROM stdin;
\.


--
-- Data for Name: request_type; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request_type (id, create_time, update_time, name, "desc", request_form_id, sample_form_id, deleted) FROM stdin;
\.


--
-- Data for Name: request_type_external_service_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request_type_external_service_association (id, request_type_id, external_service_id) FROM stdin;
\.


--
-- Data for Name: request_type_permissions; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request_type_permissions (id, create_time, update_time, action, request_type_id, role_id) FROM stdin;
\.


--
-- Data for Name: request_type_run_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.request_type_run_association (id, request_type_id, run_id) FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.role (id, create_time, update_time, name, description, type, deleted) FROM stdin;
\.


--
-- Data for Name: run; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.run (id, create_time, update_time, form_definition_id, form_values_id, deleted, subindex) FROM stdin;
\.


--
-- Data for Name: sample; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.sample (id, create_time, update_time, name, "desc", form_values_id, request_id, deleted, bar_code, library_id, folder_id, workflow, history_id) FROM stdin;
\.


--
-- Data for Name: sample_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.sample_dataset (id, create_time, update_time, sample_id, name, status, error_msg, size, file_path, external_service_id) FROM stdin;
\.


--
-- Data for Name: sample_event; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.sample_event (id, create_time, update_time, sample_id, sample_state_id, comment) FROM stdin;
\.


--
-- Data for Name: sample_run_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.sample_run_association (id, sample_id, run_id) FROM stdin;
\.


--
-- Data for Name: sample_state; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.sample_state (id, create_time, update_time, name, "desc", request_type_id) FROM stdin;
\.


--
-- Data for Name: stored_workflow; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow (id, create_time, update_time, user_id, latest_workflow_id, name, deleted, importable, slug, published, from_path) FROM stdin;
\.


--
-- Data for Name: stored_workflow_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow_annotation_association (id, stored_workflow_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: stored_workflow_menu_entry; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow_menu_entry (id, stored_workflow_id, user_id, order_index) FROM stdin;
\.


--
-- Data for Name: stored_workflow_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow_rating_association (id, stored_workflow_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: stored_workflow_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow_tag_association (id, stored_workflow_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: stored_workflow_user_share_connection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.stored_workflow_user_share_connection (id, stored_workflow_id, user_id) FROM stdin;
\.


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tag (id, type, parent_id, name) FROM stdin;
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.task (id, create_time, execution_time, update_time, state, command_line, param_filename, runner_name, tool_stdout, tool_stderr, traceback, job_id, task_runner_name, task_runner_external_id, prepare_input_files_cmd, working_directory, info, exit_code, job_messages, job_stdout, job_stderr) FROM stdin;
\.


--
-- Data for Name: task_metric_numeric; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.task_metric_numeric (id, task_id, plugin, metric_name, metric_value) FROM stdin;
\.


--
-- Data for Name: task_metric_text; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.task_metric_text (id, task_id, plugin, metric_name, metric_value) FROM stdin;
\.


--
-- Data for Name: tool_dependency; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tool_dependency (id, create_time, update_time, tool_shed_repository_id, name, version, type, status, error_message) FROM stdin;
\.


--
-- Data for Name: tool_shed_repository; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tool_shed_repository (id, create_time, update_time, tool_shed, name, description, owner, changeset_revision, deleted, metadata, includes_datatypes, installed_changeset_revision, uninstalled, dist_to_shed, ctx_rev, status, error_message, tool_shed_status) FROM stdin;
\.


--
-- Data for Name: tool_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tool_tag_association (id, tool_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: tool_version; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tool_version (id, create_time, update_time, tool_id, tool_shed_repository_id) FROM stdin;
\.


--
-- Data for Name: tool_version_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.tool_version_association (id, tool_id, parent_id) FROM stdin;
\.


--
-- Data for Name: transfer_job; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.transfer_job (id, create_time, update_time, state, path, params, info, pid, socket) FROM stdin;
\.


--
-- Data for Name: user_action; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_action (id, create_time, user_id, session_id, action, context, params) FROM stdin;
\.


--
-- Data for Name: user_address; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_address (id, create_time, update_time, user_id, "desc", name, institution, address, city, state, postal_code, country, phone, deleted, purged) FROM stdin;
\.


--
-- Data for Name: user_group_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_group_association (id, user_id, group_id, create_time, update_time) FROM stdin;
\.


--
-- Data for Name: user_preference; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_preference (id, user_id, name, value) FROM stdin;
\.


--
-- Data for Name: user_quota_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_quota_association (id, user_id, quota_id, create_time, update_time) FROM stdin;
\.


--
-- Data for Name: user_role_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.user_role_association (id, user_id, role_id, create_time, update_time) FROM stdin;
\.


--
-- Data for Name: validation_error; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.validation_error (id, dataset_id, message, err_type, attributes) FROM stdin;
\.


--
-- Data for Name: visualization; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization (id, create_time, update_time, user_id, latest_revision_id, title, type, deleted, importable, slug, published, dbkey) FROM stdin;
\.


--
-- Data for Name: visualization_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization_annotation_association (id, visualization_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: visualization_rating_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization_rating_association (id, visualization_id, user_id, rating) FROM stdin;
\.


--
-- Data for Name: visualization_revision; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization_revision (id, create_time, update_time, visualization_id, title, config, dbkey) FROM stdin;
\.


--
-- Data for Name: visualization_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization_tag_association (id, visualization_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: visualization_user_share_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.visualization_user_share_association (id, visualization_id, user_id) FROM stdin;
\.


--
-- Data for Name: worker_process; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.worker_process (id, server_name, hostname, update_time) FROM stdin;
1	main.web.1	5fe1b3a16716	2019-05-16 22:32:39.857394
\.


--
-- Data for Name: workflow; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow (id, create_time, update_time, stored_workflow_id, name, has_cycles, has_errors, uuid, parent_workflow_id) FROM stdin;
\.


--
-- Data for Name: workflow_invocation; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation (id, create_time, update_time, workflow_id, history_id, state, scheduler, handler, uuid) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_output_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_output_dataset_association (id, workflow_invocation_id, workflow_step_id, dataset_id, workflow_output_id) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_output_dataset_collection_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_output_dataset_collection_association (id, workflow_invocation_id, workflow_step_id, dataset_collection_id, workflow_output_id) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_step; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_step (id, create_time, update_time, workflow_invocation_id, workflow_step_id, job_id, action, implicit_collection_jobs_id, state) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_step_output_dataset_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_step_output_dataset_association (id, workflow_invocation_step_id, dataset_id, output_name) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_step_output_dataset_collection_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_step_output_dataset_collection_association (id, workflow_invocation_step_id, workflow_step_id, dataset_collection_id, output_name) FROM stdin;
\.


--
-- Data for Name: workflow_invocation_to_subworkflow_invocation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_invocation_to_subworkflow_invocation_association (id, workflow_invocation_id, subworkflow_invocation_id, workflow_step_id) FROM stdin;
\.


--
-- Data for Name: workflow_output; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_output (id, workflow_step_id, output_name, label, uuid) FROM stdin;
\.


--
-- Data for Name: workflow_request_input_parameters; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_request_input_parameters (id, workflow_invocation_id, name, type, value) FROM stdin;
\.


--
-- Data for Name: workflow_request_input_step_parameter; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_request_input_step_parameter (id, workflow_invocation_id, workflow_step_id, parameter_value) FROM stdin;
\.


--
-- Data for Name: workflow_request_step_states; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_request_step_states (id, workflow_invocation_id, workflow_step_id, value) FROM stdin;
\.


--
-- Data for Name: workflow_request_to_input_collection_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_request_to_input_collection_dataset (id, name, workflow_invocation_id, workflow_step_id, dataset_collection_id) FROM stdin;
\.


--
-- Data for Name: workflow_request_to_input_dataset; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_request_to_input_dataset (id, name, workflow_invocation_id, workflow_step_id, dataset_id) FROM stdin;
\.


--
-- Data for Name: workflow_step; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_step (id, create_time, update_time, workflow_id, type, tool_id, tool_version, tool_inputs, tool_errors, "position", config, order_index, label, uuid, subworkflow_id, dynamic_tool_id) FROM stdin;
\.


--
-- Data for Name: workflow_step_annotation_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_step_annotation_association (id, workflow_step_id, user_id, annotation) FROM stdin;
\.


--
-- Data for Name: workflow_step_connection; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_step_connection (id, output_step_id, input_step_input_id, output_name, input_subworkflow_step_id) FROM stdin;
\.


--
-- Data for Name: workflow_step_input; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_step_input (id, workflow_step_id, name, merge_type, scatter_type, value_from, value_from_type, default_value, default_value_set, runtime_value) FROM stdin;
\.


--
-- Data for Name: workflow_step_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_step_tag_association (id, workflow_step_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Data for Name: workflow_tag_association; Type: TABLE DATA; Schema: public; Owner: galaxydbuser
--

COPY public.workflow_tag_association (id, workflow_id, tag_id, user_id, user_tname, value, user_value) FROM stdin;
\.


--
-- Name: api_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.api_keys_id_seq', 1, false);


--
-- Name: cleanup_event_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_dataset_association_id_seq', 1, false);


--
-- Name: cleanup_event_hda_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_hda_association_id_seq', 1, false);


--
-- Name: cleanup_event_history_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_history_association_id_seq', 1, false);


--
-- Name: cleanup_event_icda_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_icda_association_id_seq', 1, false);


--
-- Name: cleanup_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_id_seq', 1, false);


--
-- Name: cleanup_event_ldda_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_ldda_association_id_seq', 1, false);


--
-- Name: cleanup_event_library_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_library_association_id_seq', 1, false);


--
-- Name: cleanup_event_library_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_library_dataset_association_id_seq', 1, false);


--
-- Name: cleanup_event_library_folder_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_library_folder_association_id_seq', 1, false);


--
-- Name: cleanup_event_metadata_file_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_metadata_file_association_id_seq', 1, false);


--
-- Name: cleanup_event_user_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cleanup_event_user_association_id_seq', 1, false);


--
-- Name: cloudauthz_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.cloudauthz_id_seq', 1, false);


--
-- Name: custos_authnz_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.custos_authnz_token_id_seq', 1, false);


--
-- Name: data_manager_history_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.data_manager_history_association_id_seq', 1, false);


--
-- Name: data_manager_job_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.data_manager_job_association_id_seq', 1, false);


--
-- Name: dataset_collection_element_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_collection_element_id_seq', 1, false);


--
-- Name: dataset_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_collection_id_seq', 1, false);


--
-- Name: dataset_hash_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_hash_id_seq', 1, false);


--
-- Name: dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_id_seq', 1, false);


--
-- Name: dataset_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_permissions_id_seq', 1, false);


--
-- Name: dataset_source_hash_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_source_hash_id_seq', 1, false);


--
-- Name: dataset_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_source_id_seq', 1, false);


--
-- Name: dataset_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dataset_tag_association_id_seq', 1, false);


--
-- Name: default_history_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.default_history_permissions_id_seq', 1, false);


--
-- Name: default_quota_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.default_quota_association_id_seq', 1, false);


--
-- Name: default_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.default_user_permissions_id_seq', 1, false);


--
-- Name: deferred_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.deferred_job_id_seq', 1, false);


--
-- Name: dynamic_tool_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.dynamic_tool_id_seq', 1, false);


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.event_id_seq', 1, false);


--
-- Name: extended_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.extended_metadata_id_seq', 1, false);


--
-- Name: extended_metadata_index_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.extended_metadata_index_id_seq', 1, false);


--
-- Name: external_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.external_service_id_seq', 1, false);


--
-- Name: form_definition_current_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.form_definition_current_id_seq', 1, false);


--
-- Name: form_definition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.form_definition_id_seq', 1, false);


--
-- Name: form_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.form_values_id_seq', 1, false);


--
-- Name: galaxy_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.galaxy_group_id_seq', 1, false);


--
-- Name: galaxy_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.galaxy_session_id_seq', 1, true);


--
-- Name: galaxy_session_to_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.galaxy_session_to_history_id_seq', 1, true);


--
-- Name: galaxy_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.galaxy_user_id_seq', 1, false);


--
-- Name: galaxy_user_openid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.galaxy_user_openid_id_seq', 1, false);


--
-- Name: genome_index_tool_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.genome_index_tool_data_id_seq', 1, false);


--
-- Name: group_quota_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.group_quota_association_id_seq', 1, false);


--
-- Name: group_role_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.group_role_association_id_seq', 1, false);


--
-- Name: history_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_annotation_association_id_seq', 1, false);


--
-- Name: history_dataset_association_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_annotation_association_id_seq', 1, false);


--
-- Name: history_dataset_association_display_at_authorization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_display_at_authorization_id_seq', 1, false);


--
-- Name: history_dataset_association_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_history_id_seq', 1, false);


--
-- Name: history_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_id_seq', 1, false);


--
-- Name: history_dataset_association_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_rating_association_id_seq', 1, false);


--
-- Name: history_dataset_association_subset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_subset_id_seq', 1, false);


--
-- Name: history_dataset_association_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_association_tag_association_id_seq', 1, false);


--
-- Name: history_dataset_collection_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_collection_annotation_association_id_seq', 1, false);


--
-- Name: history_dataset_collection_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_collection_association_id_seq', 1, false);


--
-- Name: history_dataset_collection_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_collection_rating_association_id_seq', 1, false);


--
-- Name: history_dataset_collection_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_dataset_collection_tag_association_id_seq', 1, false);


--
-- Name: history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_id_seq', 1, true);


--
-- Name: history_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_rating_association_id_seq', 1, false);


--
-- Name: history_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_tag_association_id_seq', 1, false);


--
-- Name: history_user_share_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.history_user_share_association_id_seq', 1, false);


--
-- Name: implicit_collection_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.implicit_collection_jobs_id_seq', 1, false);


--
-- Name: implicit_collection_jobs_job_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.implicit_collection_jobs_job_association_id_seq', 1, false);


--
-- Name: implicitly_converted_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.implicitly_converted_dataset_association_id_seq', 1, false);


--
-- Name: implicitly_created_dataset_collection_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.implicitly_created_dataset_collection_inputs_id_seq', 1, false);


--
-- Name: job_export_history_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_export_history_archive_id_seq', 1, false);


--
-- Name: job_external_output_metadata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_external_output_metadata_id_seq', 1, false);


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_id_seq', 1, false);


--
-- Name: job_import_history_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_import_history_archive_id_seq', 1, false);


--
-- Name: job_metric_numeric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_metric_numeric_id_seq', 1, false);


--
-- Name: job_metric_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_metric_text_id_seq', 1, false);


--
-- Name: job_parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_parameter_id_seq', 1, false);


--
-- Name: job_state_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_state_history_id_seq', 1, false);


--
-- Name: job_to_implicit_output_dataset_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_implicit_output_dataset_collection_id_seq', 1, false);


--
-- Name: job_to_input_dataset_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_input_dataset_collection_id_seq', 1, false);


--
-- Name: job_to_input_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_input_dataset_id_seq', 1, false);


--
-- Name: job_to_input_library_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_input_library_dataset_id_seq', 1, false);


--
-- Name: job_to_output_dataset_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_output_dataset_collection_id_seq', 1, false);


--
-- Name: job_to_output_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_output_dataset_id_seq', 1, false);


--
-- Name: job_to_output_library_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.job_to_output_library_dataset_id_seq', 1, false);


--
-- Name: library_dataset_collection_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_collection_annotation_association_id_seq', 1, false);


--
-- Name: library_dataset_collection_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_collection_association_id_seq', 1, false);


--
-- Name: library_dataset_collection_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_collection_rating_association_id_seq', 1, false);


--
-- Name: library_dataset_collection_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_collection_tag_association_id_seq', 1, false);


--
-- Name: library_dataset_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_dataset_association_id_seq', 1, false);


--
-- Name: library_dataset_dataset_association_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_dataset_association_permissions_id_seq', 1, false);


--
-- Name: library_dataset_dataset_association_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_dataset_association_tag_association_id_seq', 1, false);


--
-- Name: library_dataset_dataset_info_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_dataset_info_association_id_seq', 1, false);


--
-- Name: library_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_id_seq', 1, false);


--
-- Name: library_dataset_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_dataset_permissions_id_seq', 1, false);


--
-- Name: library_folder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_folder_id_seq', 1, false);


--
-- Name: library_folder_info_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_folder_info_association_id_seq', 1, false);


--
-- Name: library_folder_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_folder_permissions_id_seq', 1, false);


--
-- Name: library_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_id_seq', 1, false);


--
-- Name: library_info_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_info_association_id_seq', 1, false);


--
-- Name: library_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.library_permissions_id_seq', 1, false);


--
-- Name: message_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.message_id_sequence', 1, false);


--
-- Name: metadata_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.metadata_file_id_seq', 1, false);


--
-- Name: oidc_user_authnz_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.oidc_user_authnz_tokens_id_seq', 1, false);


--
-- Name: page_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_annotation_association_id_seq', 1, false);


--
-- Name: page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_id_seq', 1, false);


--
-- Name: page_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_rating_association_id_seq', 1, false);


--
-- Name: page_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_revision_id_seq', 1, false);


--
-- Name: page_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_tag_association_id_seq', 1, false);


--
-- Name: page_user_share_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.page_user_share_association_id_seq', 1, false);


--
-- Name: post_job_action_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.post_job_action_association_id_seq', 1, false);


--
-- Name: post_job_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.post_job_action_id_seq', 1, false);


--
-- Name: psa_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.psa_association_id_seq', 1, false);


--
-- Name: psa_code_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.psa_code_id_seq', 1, false);


--
-- Name: psa_nonce_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.psa_nonce_id_seq', 1, false);


--
-- Name: psa_partial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.psa_partial_id_seq', 1, false);


--
-- Name: queue_id_sequence; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.queue_id_sequence', 1, true);


--
-- Name: quota_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.quota_id_seq', 1, false);


--
-- Name: repository_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.repository_dependency_id_seq', 1, false);


--
-- Name: repository_repository_dependency_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.repository_repository_dependency_association_id_seq', 1, false);


--
-- Name: request_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_event_id_seq', 1, false);


--
-- Name: request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_id_seq', 1, false);


--
-- Name: request_type_external_service_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_type_external_service_association_id_seq', 1, false);


--
-- Name: request_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_type_id_seq', 1, false);


--
-- Name: request_type_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_type_permissions_id_seq', 1, false);


--
-- Name: request_type_run_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.request_type_run_association_id_seq', 1, false);


--
-- Name: role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.role_id_seq', 1, false);


--
-- Name: run_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.run_id_seq', 1, false);


--
-- Name: sample_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.sample_dataset_id_seq', 1, false);


--
-- Name: sample_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.sample_event_id_seq', 1, false);


--
-- Name: sample_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.sample_id_seq', 1, false);


--
-- Name: sample_run_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.sample_run_association_id_seq', 1, false);


--
-- Name: sample_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.sample_state_id_seq', 1, false);


--
-- Name: stored_workflow_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_annotation_association_id_seq', 1, false);


--
-- Name: stored_workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_id_seq', 1, false);


--
-- Name: stored_workflow_menu_entry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_menu_entry_id_seq', 1, false);


--
-- Name: stored_workflow_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_rating_association_id_seq', 1, false);


--
-- Name: stored_workflow_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_tag_association_id_seq', 1, false);


--
-- Name: stored_workflow_user_share_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.stored_workflow_user_share_connection_id_seq', 1, false);


--
-- Name: tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tag_id_seq', 1, false);


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.task_id_seq', 1, false);


--
-- Name: task_metric_numeric_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.task_metric_numeric_id_seq', 1, false);


--
-- Name: task_metric_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.task_metric_text_id_seq', 1, false);


--
-- Name: tool_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tool_dependency_id_seq', 1, false);


--
-- Name: tool_shed_repository_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tool_shed_repository_id_seq', 1, false);


--
-- Name: tool_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tool_tag_association_id_seq', 1, false);


--
-- Name: tool_version_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tool_version_association_id_seq', 1, false);


--
-- Name: tool_version_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.tool_version_id_seq', 1, false);


--
-- Name: transfer_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.transfer_job_id_seq', 1, false);


--
-- Name: user_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_action_id_seq', 1, false);


--
-- Name: user_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_address_id_seq', 1, false);


--
-- Name: user_group_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_group_association_id_seq', 1, false);


--
-- Name: user_preference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_preference_id_seq', 1, false);


--
-- Name: user_quota_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_quota_association_id_seq', 1, false);


--
-- Name: user_role_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.user_role_association_id_seq', 1, false);


--
-- Name: validation_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.validation_error_id_seq', 1, false);


--
-- Name: visualization_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_annotation_association_id_seq', 1, false);


--
-- Name: visualization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_id_seq', 1, false);


--
-- Name: visualization_rating_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_rating_association_id_seq', 1, false);


--
-- Name: visualization_revision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_revision_id_seq', 1, false);


--
-- Name: visualization_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_tag_association_id_seq', 1, false);


--
-- Name: visualization_user_share_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.visualization_user_share_association_id_seq', 1, false);


--
-- Name: worker_process_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.worker_process_id_seq', 1, true);


--
-- Name: workflow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_id_seq', 1, false);


--
-- Name: workflow_invocation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_id_seq', 1, false);


--
-- Name: workflow_invocation_output_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_output_dataset_association_id_seq', 1, false);


--
-- Name: workflow_invocation_output_dataset_collection_associatio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_output_dataset_collection_associatio_id_seq', 1, false);


--
-- Name: workflow_invocation_step_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_step_id_seq', 1, false);


--
-- Name: workflow_invocation_step_output_dataset_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_step_output_dataset_association_id_seq', 1, false);


--
-- Name: workflow_invocation_step_output_dataset_collection_assoc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_step_output_dataset_collection_assoc_id_seq', 1, false);


--
-- Name: workflow_invocation_to_subworkflow_invocation_associatio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_invocation_to_subworkflow_invocation_associatio_id_seq', 1, false);


--
-- Name: workflow_output_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_output_id_seq', 1, false);


--
-- Name: workflow_request_input_parameters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_request_input_parameters_id_seq', 1, false);


--
-- Name: workflow_request_input_step_parameter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_request_input_step_parameter_id_seq', 1, false);


--
-- Name: workflow_request_step_states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_request_step_states_id_seq', 1, false);


--
-- Name: workflow_request_to_input_collection_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_request_to_input_collection_dataset_id_seq', 1, false);


--
-- Name: workflow_request_to_input_dataset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_request_to_input_dataset_id_seq', 1, false);


--
-- Name: workflow_step_annotation_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_step_annotation_association_id_seq', 1, false);


--
-- Name: workflow_step_connection_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_step_connection_id_seq1', 1, false);


--
-- Name: workflow_step_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_step_id_seq', 1, false);


--
-- Name: workflow_step_input_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_step_input_id_seq', 1, false);


--
-- Name: workflow_step_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_step_tag_association_id_seq', 1, false);


--
-- Name: workflow_tag_association_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galaxydbuser
--

SELECT pg_catalog.setval('public.workflow_tag_association_id_seq', 1, false);


--
-- Name: api_keys api_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_dataset_association cleanup_event_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_dataset_association
    ADD CONSTRAINT cleanup_event_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_hda_association cleanup_event_hda_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_hda_association
    ADD CONSTRAINT cleanup_event_hda_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_history_association cleanup_event_history_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_history_association
    ADD CONSTRAINT cleanup_event_history_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_icda_association cleanup_event_icda_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_icda_association
    ADD CONSTRAINT cleanup_event_icda_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_ldda_association cleanup_event_ldda_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_ldda_association
    ADD CONSTRAINT cleanup_event_ldda_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_library_association cleanup_event_library_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_association
    ADD CONSTRAINT cleanup_event_library_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_library_dataset_association cleanup_event_library_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_dataset_association
    ADD CONSTRAINT cleanup_event_library_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_library_folder_association cleanup_event_library_folder_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_folder_association
    ADD CONSTRAINT cleanup_event_library_folder_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_metadata_file_association cleanup_event_metadata_file_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_metadata_file_association
    ADD CONSTRAINT cleanup_event_metadata_file_association_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event cleanup_event_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event
    ADD CONSTRAINT cleanup_event_pkey PRIMARY KEY (id);


--
-- Name: cleanup_event_user_association cleanup_event_user_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_user_association
    ADD CONSTRAINT cleanup_event_user_association_pkey PRIMARY KEY (id);


--
-- Name: cloudauthz cloudauthz_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cloudauthz
    ADD CONSTRAINT cloudauthz_pkey PRIMARY KEY (id);


--
-- Name: custos_authnz_token custos_authnz_token_external_user_id_provider_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.custos_authnz_token
    ADD CONSTRAINT custos_authnz_token_external_user_id_provider_key UNIQUE (external_user_id, provider);


--
-- Name: custos_authnz_token custos_authnz_token_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.custos_authnz_token
    ADD CONSTRAINT custos_authnz_token_pkey PRIMARY KEY (id);


--
-- Name: custos_authnz_token custos_authnz_token_user_id_external_user_id_provider_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.custos_authnz_token
    ADD CONSTRAINT custos_authnz_token_user_id_external_user_id_provider_key UNIQUE (user_id, external_user_id, provider);


--
-- Name: data_manager_history_association data_manager_history_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_history_association
    ADD CONSTRAINT data_manager_history_association_pkey PRIMARY KEY (id);


--
-- Name: data_manager_job_association data_manager_job_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_job_association
    ADD CONSTRAINT data_manager_job_association_pkey PRIMARY KEY (id);


--
-- Name: dataset_collection_element dataset_collection_element_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element
    ADD CONSTRAINT dataset_collection_element_pkey PRIMARY KEY (id);


--
-- Name: dataset_collection dataset_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection
    ADD CONSTRAINT dataset_collection_pkey PRIMARY KEY (id);


--
-- Name: dataset_hash dataset_hash_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_hash
    ADD CONSTRAINT dataset_hash_pkey PRIMARY KEY (id);


--
-- Name: dataset_permissions dataset_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_permissions
    ADD CONSTRAINT dataset_permissions_pkey PRIMARY KEY (id);


--
-- Name: dataset dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset
    ADD CONSTRAINT dataset_pkey PRIMARY KEY (id);


--
-- Name: dataset_source_hash dataset_source_hash_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source_hash
    ADD CONSTRAINT dataset_source_hash_pkey PRIMARY KEY (id);


--
-- Name: dataset_source dataset_source_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source
    ADD CONSTRAINT dataset_source_pkey PRIMARY KEY (id);


--
-- Name: dataset_tag_association dataset_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_tag_association
    ADD CONSTRAINT dataset_tag_association_pkey PRIMARY KEY (id);


--
-- Name: default_history_permissions default_history_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_history_permissions
    ADD CONSTRAINT default_history_permissions_pkey PRIMARY KEY (id);


--
-- Name: default_quota_association default_quota_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_quota_association
    ADD CONSTRAINT default_quota_association_pkey PRIMARY KEY (id);


--
-- Name: default_user_permissions default_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_user_permissions
    ADD CONSTRAINT default_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: deferred_job deferred_job_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.deferred_job
    ADD CONSTRAINT deferred_job_pkey PRIMARY KEY (id);


--
-- Name: dynamic_tool dynamic_tool_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dynamic_tool
    ADD CONSTRAINT dynamic_tool_pkey PRIMARY KEY (id);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: extended_metadata_index extended_metadata_index_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.extended_metadata_index
    ADD CONSTRAINT extended_metadata_index_pkey PRIMARY KEY (id);


--
-- Name: extended_metadata extended_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.extended_metadata
    ADD CONSTRAINT extended_metadata_pkey PRIMARY KEY (id);


--
-- Name: form_definition_current form_definition_current_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition_current
    ADD CONSTRAINT form_definition_current_pkey PRIMARY KEY (id);


--
-- Name: form_definition form_definition_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition
    ADD CONSTRAINT form_definition_pkey PRIMARY KEY (id);


--
-- Name: form_values form_values_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_values
    ADD CONSTRAINT form_values_pkey PRIMARY KEY (id);


--
-- Name: galaxy_group galaxy_group_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_group
    ADD CONSTRAINT galaxy_group_pkey PRIMARY KEY (id);


--
-- Name: galaxy_session galaxy_session_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session
    ADD CONSTRAINT galaxy_session_pkey PRIMARY KEY (id);


--
-- Name: galaxy_session_to_history galaxy_session_to_history_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session_to_history
    ADD CONSTRAINT galaxy_session_to_history_pkey PRIMARY KEY (id);


--
-- Name: galaxy_user_openid galaxy_user_openid_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user_openid
    ADD CONSTRAINT galaxy_user_openid_pkey PRIMARY KEY (id);


--
-- Name: galaxy_user galaxy_user_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user
    ADD CONSTRAINT galaxy_user_pkey PRIMARY KEY (id);


--
-- Name: genome_index_tool_data genome_index_tool_data_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_pkey PRIMARY KEY (id);


--
-- Name: group_quota_association group_quota_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_quota_association
    ADD CONSTRAINT group_quota_association_pkey PRIMARY KEY (id);


--
-- Name: group_role_association group_role_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_role_association
    ADD CONSTRAINT group_role_association_pkey PRIMARY KEY (id);


--
-- Name: history_annotation_association history_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_annotation_association
    ADD CONSTRAINT history_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_annotation_association history_dataset_association_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_annotation_association
    ADD CONSTRAINT history_dataset_association_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_display_at_authorization history_dataset_association_display_at_authorization_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_display_at_authorization
    ADD CONSTRAINT history_dataset_association_display_at_authorization_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_history history_dataset_association_history_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_history
    ADD CONSTRAINT history_dataset_association_history_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association history_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_rating_association history_dataset_association_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_rating_association
    ADD CONSTRAINT history_dataset_association_rating_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_subset history_dataset_association_subset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_subset
    ADD CONSTRAINT history_dataset_association_subset_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_association_tag_association history_dataset_association_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_tag_association
    ADD CONSTRAINT history_dataset_association_tag_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_collection_annotation_association history_dataset_collection_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_annotation_association
    ADD CONSTRAINT history_dataset_collection_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_collection_association history_dataset_collection_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_collection_rating_association history_dataset_collection_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_rating_association
    ADD CONSTRAINT history_dataset_collection_rating_association_pkey PRIMARY KEY (id);


--
-- Name: history_dataset_collection_tag_association history_dataset_collection_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_tag_association
    ADD CONSTRAINT history_dataset_collection_tag_association_pkey PRIMARY KEY (id);


--
-- Name: history history_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);


--
-- Name: history_rating_association history_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_rating_association
    ADD CONSTRAINT history_rating_association_pkey PRIMARY KEY (id);


--
-- Name: history_tag_association history_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_tag_association
    ADD CONSTRAINT history_tag_association_pkey PRIMARY KEY (id);


--
-- Name: history_user_share_association history_user_share_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_user_share_association
    ADD CONSTRAINT history_user_share_association_pkey PRIMARY KEY (id);


--
-- Name: implicit_collection_jobs_job_association implicit_collection_jobs_job_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs_job_association
    ADD CONSTRAINT implicit_collection_jobs_job_association_pkey PRIMARY KEY (id);


--
-- Name: implicit_collection_jobs implicit_collection_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs
    ADD CONSTRAINT implicit_collection_jobs_pkey PRIMARY KEY (id);


--
-- Name: implicitly_converted_dataset_association implicitly_converted_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association
    ADD CONSTRAINT implicitly_converted_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: implicitly_created_dataset_collection_inputs implicitly_created_dataset_collection_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_created_dataset_collection_inputs
    ADD CONSTRAINT implicitly_created_dataset_collection_inputs_pkey PRIMARY KEY (id);


--
-- Name: job_export_history_archive job_export_history_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_export_history_archive
    ADD CONSTRAINT job_export_history_archive_pkey PRIMARY KEY (id);


--
-- Name: job_external_output_metadata job_external_output_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_external_output_metadata
    ADD CONSTRAINT job_external_output_metadata_pkey PRIMARY KEY (id);


--
-- Name: job_import_history_archive job_import_history_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_import_history_archive
    ADD CONSTRAINT job_import_history_archive_pkey PRIMARY KEY (id);


--
-- Name: job_metric_numeric job_metric_numeric_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_numeric
    ADD CONSTRAINT job_metric_numeric_pkey PRIMARY KEY (id);


--
-- Name: job_metric_text job_metric_text_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_text
    ADD CONSTRAINT job_metric_text_pkey PRIMARY KEY (id);


--
-- Name: job_parameter job_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_parameter
    ADD CONSTRAINT job_parameter_pkey PRIMARY KEY (id);


--
-- Name: job job_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: job_state_history job_state_history_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_state_history
    ADD CONSTRAINT job_state_history_pkey PRIMARY KEY (id);


--
-- Name: job_to_implicit_output_dataset_collection job_to_implicit_output_dataset_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_implicit_output_dataset_collection
    ADD CONSTRAINT job_to_implicit_output_dataset_collection_pkey PRIMARY KEY (id);


--
-- Name: job_to_input_dataset_collection job_to_input_dataset_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset_collection
    ADD CONSTRAINT job_to_input_dataset_collection_pkey PRIMARY KEY (id);


--
-- Name: job_to_input_dataset job_to_input_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset
    ADD CONSTRAINT job_to_input_dataset_pkey PRIMARY KEY (id);


--
-- Name: job_to_input_library_dataset job_to_input_library_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_library_dataset
    ADD CONSTRAINT job_to_input_library_dataset_pkey PRIMARY KEY (id);


--
-- Name: job_to_output_dataset_collection job_to_output_dataset_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset_collection
    ADD CONSTRAINT job_to_output_dataset_collection_pkey PRIMARY KEY (id);


--
-- Name: job_to_output_dataset job_to_output_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset
    ADD CONSTRAINT job_to_output_dataset_pkey PRIMARY KEY (id);


--
-- Name: job_to_output_library_dataset job_to_output_library_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_library_dataset
    ADD CONSTRAINT job_to_output_library_dataset_pkey PRIMARY KEY (id);


--
-- Name: kombu_message kombu_message_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.kombu_message
    ADD CONSTRAINT kombu_message_pkey PRIMARY KEY (id);


--
-- Name: kombu_queue kombu_queue_name_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.kombu_queue
    ADD CONSTRAINT kombu_queue_name_key UNIQUE (name);


--
-- Name: kombu_queue kombu_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.kombu_queue
    ADD CONSTRAINT kombu_queue_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_collection_annotation_association library_dataset_collection_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_annotation_association
    ADD CONSTRAINT library_dataset_collection_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_collection_association library_dataset_collection_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_association
    ADD CONSTRAINT library_dataset_collection_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_collection_rating_association library_dataset_collection_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_rating_association
    ADD CONSTRAINT library_dataset_collection_rating_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_collection_tag_association library_dataset_collection_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_tag_association
    ADD CONSTRAINT library_dataset_collection_tag_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_dataset_association_permissions library_dataset_dataset_association_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_permissions
    ADD CONSTRAINT library_dataset_dataset_association_permissions_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_dataset_association_tag_association library_dataset_dataset_association_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_tag_association
    ADD CONSTRAINT library_dataset_dataset_association_tag_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_dataset_info_association library_dataset_dataset_info_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_info_association
    ADD CONSTRAINT library_dataset_dataset_info_association_pkey PRIMARY KEY (id);


--
-- Name: library_dataset_permissions library_dataset_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_permissions
    ADD CONSTRAINT library_dataset_permissions_pkey PRIMARY KEY (id);


--
-- Name: library_dataset library_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset
    ADD CONSTRAINT library_dataset_pkey PRIMARY KEY (id);


--
-- Name: library_folder_info_association library_folder_info_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_info_association
    ADD CONSTRAINT library_folder_info_association_pkey PRIMARY KEY (id);


--
-- Name: library_folder_permissions library_folder_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_permissions
    ADD CONSTRAINT library_folder_permissions_pkey PRIMARY KEY (id);


--
-- Name: library_folder library_folder_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder
    ADD CONSTRAINT library_folder_pkey PRIMARY KEY (id);


--
-- Name: library_info_association library_info_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_info_association
    ADD CONSTRAINT library_info_association_pkey PRIMARY KEY (id);


--
-- Name: library_permissions library_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_permissions
    ADD CONSTRAINT library_permissions_pkey PRIMARY KEY (id);


--
-- Name: library library_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library
    ADD CONSTRAINT library_pkey PRIMARY KEY (id);


--
-- Name: metadata_file metadata_file_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.metadata_file
    ADD CONSTRAINT metadata_file_pkey PRIMARY KEY (id);


--
-- Name: migrate_version migrate_version_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.migrate_version
    ADD CONSTRAINT migrate_version_pkey PRIMARY KEY (repository_id);


--
-- Name: oidc_user_authnz_tokens oidc_user_authnz_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.oidc_user_authnz_tokens
    ADD CONSTRAINT oidc_user_authnz_tokens_pkey PRIMARY KEY (id);


--
-- Name: page_annotation_association page_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_annotation_association
    ADD CONSTRAINT page_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: page page_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);


--
-- Name: page_rating_association page_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_rating_association
    ADD CONSTRAINT page_rating_association_pkey PRIMARY KEY (id);


--
-- Name: page_revision page_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_revision
    ADD CONSTRAINT page_revision_pkey PRIMARY KEY (id);


--
-- Name: page_tag_association page_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_tag_association
    ADD CONSTRAINT page_tag_association_pkey PRIMARY KEY (id);


--
-- Name: page_user_share_association page_user_share_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_user_share_association
    ADD CONSTRAINT page_user_share_association_pkey PRIMARY KEY (id);


--
-- Name: password_reset_token password_reset_token_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT password_reset_token_pkey PRIMARY KEY (token);


--
-- Name: post_job_action_association post_job_action_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action_association
    ADD CONSTRAINT post_job_action_association_pkey PRIMARY KEY (id);


--
-- Name: post_job_action post_job_action_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action
    ADD CONSTRAINT post_job_action_pkey PRIMARY KEY (id);


--
-- Name: psa_association psa_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_association
    ADD CONSTRAINT psa_association_pkey PRIMARY KEY (id);


--
-- Name: psa_code psa_code_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_code
    ADD CONSTRAINT psa_code_pkey PRIMARY KEY (id);


--
-- Name: psa_nonce psa_nonce_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_nonce
    ADD CONSTRAINT psa_nonce_pkey PRIMARY KEY (id);


--
-- Name: psa_partial psa_partial_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.psa_partial
    ADD CONSTRAINT psa_partial_pkey PRIMARY KEY (id);


--
-- Name: quota quota_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.quota
    ADD CONSTRAINT quota_pkey PRIMARY KEY (id);


--
-- Name: repository_dependency repository_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_dependency
    ADD CONSTRAINT repository_dependency_pkey PRIMARY KEY (id);


--
-- Name: repository_repository_dependency_association repository_repository_dependency_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_repository_dependency_association
    ADD CONSTRAINT repository_repository_dependency_association_pkey PRIMARY KEY (id);


--
-- Name: request_event request_event_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_event
    ADD CONSTRAINT request_event_pkey PRIMARY KEY (id);


--
-- Name: request request_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_pkey PRIMARY KEY (id);


--
-- Name: request_type_external_service_association request_type_external_service_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_external_service_association
    ADD CONSTRAINT request_type_external_service_association_pkey PRIMARY KEY (id);


--
-- Name: request_type_permissions request_type_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_permissions
    ADD CONSTRAINT request_type_permissions_pkey PRIMARY KEY (id);


--
-- Name: request_type request_type_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type
    ADD CONSTRAINT request_type_pkey PRIMARY KEY (id);


--
-- Name: request_type_run_association request_type_run_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_run_association
    ADD CONSTRAINT request_type_run_association_pkey PRIMARY KEY (id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- Name: run run_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.run
    ADD CONSTRAINT run_pkey PRIMARY KEY (id);


--
-- Name: sample_dataset sample_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_dataset
    ADD CONSTRAINT sample_dataset_pkey PRIMARY KEY (id);


--
-- Name: sample_event sample_event_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_event
    ADD CONSTRAINT sample_event_pkey PRIMARY KEY (id);


--
-- Name: sample sample_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_pkey PRIMARY KEY (id);


--
-- Name: sample_run_association sample_run_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_run_association
    ADD CONSTRAINT sample_run_association_pkey PRIMARY KEY (id);


--
-- Name: sample_state sample_state_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_state
    ADD CONSTRAINT sample_state_pkey PRIMARY KEY (id);


--
-- Name: external_service sequencer_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.external_service
    ADD CONSTRAINT sequencer_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow_annotation_association stored_workflow_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_annotation_association
    ADD CONSTRAINT stored_workflow_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow_menu_entry stored_workflow_menu_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_menu_entry
    ADD CONSTRAINT stored_workflow_menu_entry_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow stored_workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow
    ADD CONSTRAINT stored_workflow_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow_rating_association stored_workflow_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_rating_association
    ADD CONSTRAINT stored_workflow_rating_association_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow_tag_association stored_workflow_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_tag_association
    ADD CONSTRAINT stored_workflow_tag_association_pkey PRIMARY KEY (id);


--
-- Name: stored_workflow_user_share_connection stored_workflow_user_share_connection_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_user_share_connection
    ADD CONSTRAINT stored_workflow_user_share_connection_pkey PRIMARY KEY (id);


--
-- Name: tag tag_name_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_name_key UNIQUE (name);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (id);


--
-- Name: task_metric_numeric task_metric_numeric_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_numeric
    ADD CONSTRAINT task_metric_numeric_pkey PRIMARY KEY (id);


--
-- Name: task_metric_text task_metric_text_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_text
    ADD CONSTRAINT task_metric_text_pkey PRIMARY KEY (id);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: tool_dependency tool_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_dependency
    ADD CONSTRAINT tool_dependency_pkey PRIMARY KEY (id);


--
-- Name: tool_shed_repository tool_shed_repository_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_shed_repository
    ADD CONSTRAINT tool_shed_repository_pkey PRIMARY KEY (id);


--
-- Name: tool_tag_association tool_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_tag_association
    ADD CONSTRAINT tool_tag_association_pkey PRIMARY KEY (id);


--
-- Name: tool_version_association tool_version_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version_association
    ADD CONSTRAINT tool_version_association_pkey PRIMARY KEY (id);


--
-- Name: tool_version tool_version_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version
    ADD CONSTRAINT tool_version_pkey PRIMARY KEY (id);


--
-- Name: transfer_job transfer_job_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.transfer_job
    ADD CONSTRAINT transfer_job_pkey PRIMARY KEY (id);


--
-- Name: user_action user_action_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_action
    ADD CONSTRAINT user_action_pkey PRIMARY KEY (id);


--
-- Name: user_address user_address_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_pkey PRIMARY KEY (id);


--
-- Name: user_group_association user_group_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_group_association
    ADD CONSTRAINT user_group_association_pkey PRIMARY KEY (id);


--
-- Name: user_preference user_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_pkey PRIMARY KEY (id);


--
-- Name: user_quota_association user_quota_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_quota_association
    ADD CONSTRAINT user_quota_association_pkey PRIMARY KEY (id);


--
-- Name: user_role_association user_role_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_role_association
    ADD CONSTRAINT user_role_association_pkey PRIMARY KEY (id);


--
-- Name: validation_error validation_error_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.validation_error
    ADD CONSTRAINT validation_error_pkey PRIMARY KEY (id);


--
-- Name: visualization_annotation_association visualization_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_annotation_association
    ADD CONSTRAINT visualization_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: visualization visualization_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization
    ADD CONSTRAINT visualization_pkey PRIMARY KEY (id);


--
-- Name: visualization_rating_association visualization_rating_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_rating_association
    ADD CONSTRAINT visualization_rating_association_pkey PRIMARY KEY (id);


--
-- Name: visualization_revision visualization_revision_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_revision
    ADD CONSTRAINT visualization_revision_pkey PRIMARY KEY (id);


--
-- Name: visualization_tag_association visualization_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_tag_association
    ADD CONSTRAINT visualization_tag_association_pkey PRIMARY KEY (id);


--
-- Name: visualization_user_share_association visualization_user_share_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_user_share_association
    ADD CONSTRAINT visualization_user_share_association_pkey PRIMARY KEY (id);


--
-- Name: worker_process worker_process_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.worker_process
    ADD CONSTRAINT worker_process_pkey PRIMARY KEY (id);


--
-- Name: worker_process worker_process_server_name_hostname_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.worker_process
    ADD CONSTRAINT worker_process_server_name_hostname_key UNIQUE (server_name, hostname);


--
-- Name: workflow_invocation_output_dataset_association workflow_invocation_output_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association
    ADD CONSTRAINT workflow_invocation_output_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation_output_dataset_collection_association workflow_invocation_output_dataset_collection_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_output_dataset_collection_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation workflow_invocation_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation
    ADD CONSTRAINT workflow_invocation_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation_step_output_dataset_association workflow_invocation_step_output_dataset_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_association
    ADD CONSTRAINT workflow_invocation_step_output_dataset_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation_step_output_dataset_collection_association workflow_invocation_step_output_dataset_collection_associa_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_step_output_dataset_collection_associa_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation_step workflow_invocation_step_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step
    ADD CONSTRAINT workflow_invocation_step_pkey PRIMARY KEY (id);


--
-- Name: workflow_invocation_to_subworkflow_invocation_association workflow_invocation_to_subworkflow_invocation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_to_subworkflow_invocation_association
    ADD CONSTRAINT workflow_invocation_to_subworkflow_invocation_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_output workflow_output_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_output
    ADD CONSTRAINT workflow_output_pkey PRIMARY KEY (id);


--
-- Name: workflow workflow_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow
    ADD CONSTRAINT workflow_pkey PRIMARY KEY (id);


--
-- Name: workflow_request_input_parameters workflow_request_input_parameters_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_parameters
    ADD CONSTRAINT workflow_request_input_parameters_pkey PRIMARY KEY (id);


--
-- Name: workflow_request_input_step_parameter workflow_request_input_step_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_step_parameter
    ADD CONSTRAINT workflow_request_input_step_parameter_pkey PRIMARY KEY (id);


--
-- Name: workflow_request_step_states workflow_request_step_states_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_step_states
    ADD CONSTRAINT workflow_request_step_states_pkey PRIMARY KEY (id);


--
-- Name: workflow_request_to_input_collection_dataset workflow_request_to_input_collection_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_collection_dataset
    ADD CONSTRAINT workflow_request_to_input_collection_dataset_pkey PRIMARY KEY (id);


--
-- Name: workflow_request_to_input_dataset workflow_request_to_input_dataset_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_dataset
    ADD CONSTRAINT workflow_request_to_input_dataset_pkey PRIMARY KEY (id);


--
-- Name: workflow_step_annotation_association workflow_step_annotation_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_annotation_association
    ADD CONSTRAINT workflow_step_annotation_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_step_connection workflow_step_connection_pkey1; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_connection
    ADD CONSTRAINT workflow_step_connection_pkey1 PRIMARY KEY (id);


--
-- Name: workflow_step_input workflow_step_input_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_input
    ADD CONSTRAINT workflow_step_input_pkey PRIMARY KEY (id);


--
-- Name: workflow_step_input workflow_step_input_workflow_step_id_name_key; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_input
    ADD CONSTRAINT workflow_step_input_workflow_step_id_name_key UNIQUE (workflow_step_id, name);


--
-- Name: workflow_step workflow_step_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step
    ADD CONSTRAINT workflow_step_pkey PRIMARY KEY (id);


--
-- Name: workflow_step_tag_association workflow_step_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_tag_association
    ADD CONSTRAINT workflow_step_tag_association_pkey PRIMARY KEY (id);


--
-- Name: workflow_tag_association workflow_tag_association_pkey; Type: CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_tag_association
    ADD CONSTRAINT workflow_tag_association_pkey PRIMARY KEY (id);


--
-- Name: id_workflow_invocation_handler; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX id_workflow_invocation_handler ON public.workflow_invocation USING btree (handler);


--
-- Name: ix_api_keys_key; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_api_keys_key ON public.api_keys USING btree (key);


--
-- Name: ix_api_keys_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_api_keys_user_id ON public.api_keys USING btree (user_id);


--
-- Name: ix_cleanup_event_dataset_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_dataset_association_cleanup_event_id ON public.cleanup_event_dataset_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_dataset_association_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_dataset_association_dataset_id ON public.cleanup_event_dataset_association USING btree (dataset_id);


--
-- Name: ix_cleanup_event_hda_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_hda_association_cleanup_event_id ON public.cleanup_event_hda_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_hda_association_hda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_hda_association_hda_id ON public.cleanup_event_hda_association USING btree (hda_id);


--
-- Name: ix_cleanup_event_history_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_history_association_cleanup_event_id ON public.cleanup_event_history_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_history_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_history_association_history_id ON public.cleanup_event_history_association USING btree (history_id);


--
-- Name: ix_cleanup_event_icda_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_icda_association_cleanup_event_id ON public.cleanup_event_icda_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_icda_association_icda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_icda_association_icda_id ON public.cleanup_event_icda_association USING btree (icda_id);


--
-- Name: ix_cleanup_event_ldda_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_ldda_association_cleanup_event_id ON public.cleanup_event_ldda_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_ldda_association_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_ldda_association_ldda_id ON public.cleanup_event_ldda_association USING btree (ldda_id);


--
-- Name: ix_cleanup_event_library_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_association_cleanup_event_id ON public.cleanup_event_library_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_library_association_library_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_association_library_id ON public.cleanup_event_library_association USING btree (library_id);


--
-- Name: ix_cleanup_event_library_dataset_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_dataset_association_cleanup_event_id ON public.cleanup_event_library_dataset_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_library_dataset_association_library_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_dataset_association_library_dataset_id ON public.cleanup_event_library_dataset_association USING btree (library_dataset_id);


--
-- Name: ix_cleanup_event_library_folder_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_folder_association_cleanup_event_id ON public.cleanup_event_library_folder_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_library_folder_association_library_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_library_folder_association_library_folder_id ON public.cleanup_event_library_folder_association USING btree (library_folder_id);


--
-- Name: ix_cleanup_event_metadata_file_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_metadata_file_association_cleanup_event_id ON public.cleanup_event_metadata_file_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_metadata_file_association_metadata_file_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_metadata_file_association_metadata_file_id ON public.cleanup_event_metadata_file_association USING btree (metadata_file_id);


--
-- Name: ix_cleanup_event_user_association_cleanup_event_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_user_association_cleanup_event_id ON public.cleanup_event_user_association USING btree (cleanup_event_id);


--
-- Name: ix_cleanup_event_user_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cleanup_event_user_association_user_id ON public.cleanup_event_user_association USING btree (user_id);


--
-- Name: ix_cloudauthz_authn_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cloudauthz_authn_id ON public.cloudauthz USING btree (authn_id);


--
-- Name: ix_cloudauthz_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_cloudauthz_user_id ON public.cloudauthz USING btree (user_id);


--
-- Name: ix_data_manager_history_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_history_association_history_id ON public.data_manager_history_association USING btree (history_id);


--
-- Name: ix_data_manager_history_association_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_history_association_update_time ON public.data_manager_history_association USING btree (update_time);


--
-- Name: ix_data_manager_history_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_history_association_user_id ON public.data_manager_history_association USING btree (user_id);


--
-- Name: ix_data_manager_job_association_data_manager_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_job_association_data_manager_id ON public.data_manager_job_association USING btree (data_manager_id);


--
-- Name: ix_data_manager_job_association_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_job_association_job_id ON public.data_manager_job_association USING btree (job_id);


--
-- Name: ix_data_manager_job_association_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_data_manager_job_association_update_time ON public.data_manager_job_association USING btree (update_time);


--
-- Name: ix_dataset_collection_element_child_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_collection_element_child_collection_id ON public.dataset_collection_element USING btree (child_collection_id);


--
-- Name: ix_dataset_collection_element_dataset_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_collection_element_dataset_collection_id ON public.dataset_collection_element USING btree (dataset_collection_id);


--
-- Name: ix_dataset_collection_element_hda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_collection_element_hda_id ON public.dataset_collection_element USING btree (hda_id);


--
-- Name: ix_dataset_collection_element_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_collection_element_ldda_id ON public.dataset_collection_element USING btree (ldda_id);


--
-- Name: ix_dataset_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_deleted ON public.dataset USING btree (deleted);


--
-- Name: ix_dataset_hash_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_hash_dataset_id ON public.dataset_hash USING btree (dataset_id);


--
-- Name: ix_dataset_object_store_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_object_store_id ON public.dataset USING btree (object_store_id);


--
-- Name: ix_dataset_permissions_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_permissions_dataset_id ON public.dataset_permissions USING btree (dataset_id);


--
-- Name: ix_dataset_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_permissions_role_id ON public.dataset_permissions USING btree (role_id);


--
-- Name: ix_dataset_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_purged ON public.dataset USING btree (purged);


--
-- Name: ix_dataset_source_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_source_dataset_id ON public.dataset_source USING btree (dataset_id);


--
-- Name: ix_dataset_source_hash_dataset_source_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_source_hash_dataset_source_id ON public.dataset_source_hash USING btree (dataset_source_id);


--
-- Name: ix_dataset_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_state ON public.dataset USING btree (state);


--
-- Name: ix_dataset_tag_association_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_tag_association_dataset_id ON public.dataset_tag_association USING btree (dataset_id);


--
-- Name: ix_dataset_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_tag_association_tag_id ON public.dataset_tag_association USING btree (tag_id);


--
-- Name: ix_dataset_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_tag_association_user_tname ON public.dataset_tag_association USING btree (user_tname);


--
-- Name: ix_dataset_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_tag_association_user_value ON public.dataset_tag_association USING btree (user_value);


--
-- Name: ix_dataset_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_tag_association_value ON public.dataset_tag_association USING btree (value);


--
-- Name: ix_dataset_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_dataset_update_time ON public.dataset USING btree (update_time);


--
-- Name: ix_default_history_permissions_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_default_history_permissions_history_id ON public.default_history_permissions USING btree (history_id);


--
-- Name: ix_default_history_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_default_history_permissions_role_id ON public.default_history_permissions USING btree (role_id);


--
-- Name: ix_default_quota_association_quota_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_default_quota_association_quota_id ON public.default_quota_association USING btree (quota_id);


--
-- Name: ix_default_quota_association_type; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_default_quota_association_type ON public.default_quota_association USING btree (type);


--
-- Name: ix_default_user_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_default_user_permissions_role_id ON public.default_user_permissions USING btree (role_id);


--
-- Name: ix_default_user_permissions_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_default_user_permissions_user_id ON public.default_user_permissions USING btree (user_id);


--
-- Name: ix_deferred_job_plugin; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_deferred_job_plugin ON public.deferred_job USING btree (plugin);


--
-- Name: ix_deferred_job_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_deferred_job_state ON public.deferred_job USING btree (state);


--
-- Name: ix_event_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_event_history_id ON public.event USING btree (history_id);


--
-- Name: ix_event_session_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_event_session_id ON public.event USING btree (session_id);


--
-- Name: ix_event_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_event_user_id ON public.event USING btree (user_id);


--
-- Name: ix_extended_metadata_index_extended_metadata_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_extended_metadata_index_extended_metadata_id ON public.extended_metadata_index USING btree (extended_metadata_id);


--
-- Name: ix_form_definition_current_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_definition_current_deleted ON public.form_definition_current USING btree (deleted);


--
-- Name: ix_form_definition_current_latest_form_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_definition_current_latest_form_id ON public.form_definition_current USING btree (latest_form_id);


--
-- Name: ix_form_definition_form_definition_current_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_definition_form_definition_current_id ON public.form_definition USING btree (form_definition_current_id);


--
-- Name: ix_form_definition_layout; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_definition_layout ON public.form_definition USING btree (layout);


--
-- Name: ix_form_definition_type; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_definition_type ON public.form_definition USING btree (type);


--
-- Name: ix_form_values_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_form_values_form_definition_id ON public.form_values USING btree (form_definition_id);


--
-- Name: ix_galaxy_group_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_group_deleted ON public.galaxy_group USING btree (deleted);


--
-- Name: ix_galaxy_group_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_galaxy_group_name ON public.galaxy_group USING btree (name);


--
-- Name: ix_galaxy_session_disk_usage; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_session_disk_usage ON public.galaxy_session USING btree (disk_usage);


--
-- Name: ix_galaxy_session_session_key; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_galaxy_session_session_key ON public.galaxy_session USING btree (session_key);


--
-- Name: ix_galaxy_session_to_history_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_session_to_history_history_id ON public.galaxy_session_to_history USING btree (history_id);


--
-- Name: ix_galaxy_session_to_history_session_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_session_to_history_session_id ON public.galaxy_session_to_history USING btree (session_id);


--
-- Name: ix_galaxy_session_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_session_user_id ON public.galaxy_session USING btree (user_id);


--
-- Name: ix_galaxy_user_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_deleted ON public.galaxy_user USING btree (deleted);


--
-- Name: ix_galaxy_user_disk_usage; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_disk_usage ON public.galaxy_user USING btree (disk_usage);


--
-- Name: ix_galaxy_user_email; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_email ON public.galaxy_user USING btree (email);


--
-- Name: ix_galaxy_user_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_form_values_id ON public.galaxy_user USING btree (form_values_id);


--
-- Name: ix_galaxy_user_openid_openid; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_galaxy_user_openid_openid ON public.galaxy_user_openid USING btree (openid);


--
-- Name: ix_galaxy_user_openid_session_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_openid_session_id ON public.galaxy_user_openid USING btree (session_id);


--
-- Name: ix_galaxy_user_openid_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_openid_update_time ON public.galaxy_user_openid USING btree (update_time);


--
-- Name: ix_galaxy_user_openid_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_openid_user_id ON public.galaxy_user_openid USING btree (user_id);


--
-- Name: ix_galaxy_user_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_purged ON public.galaxy_user USING btree (purged);


--
-- Name: ix_galaxy_user_username; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_galaxy_user_username ON public.galaxy_user USING btree (username);


--
-- Name: ix_genome_index_tool_data_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_genome_index_tool_data_dataset_id ON public.genome_index_tool_data USING btree (dataset_id);


--
-- Name: ix_genome_index_tool_data_deferred_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_genome_index_tool_data_deferred_job_id ON public.genome_index_tool_data USING btree (deferred_job_id);


--
-- Name: ix_genome_index_tool_data_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_genome_index_tool_data_job_id ON public.genome_index_tool_data USING btree (job_id);


--
-- Name: ix_genome_index_tool_data_transfer_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_genome_index_tool_data_transfer_job_id ON public.genome_index_tool_data USING btree (transfer_job_id);


--
-- Name: ix_genome_index_tool_data_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_genome_index_tool_data_user_id ON public.genome_index_tool_data USING btree (user_id);


--
-- Name: ix_group_quota_association_group_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_group_quota_association_group_id ON public.group_quota_association USING btree (group_id);


--
-- Name: ix_group_quota_association_quota_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_group_quota_association_quota_id ON public.group_quota_association USING btree (quota_id);


--
-- Name: ix_group_role_association_group_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_group_role_association_group_id ON public.group_role_association USING btree (group_id);


--
-- Name: ix_group_role_association_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_group_role_association_role_id ON public.group_role_association USING btree (role_id);


--
-- Name: ix_hda_copied_from_library_dataset_dataset_association_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_hda_copied_from_library_dataset_dataset_association_id ON public.history_dataset_association USING btree (copied_from_library_dataset_dataset_association_id);


--
-- Name: ix_hda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_hda_id ON public.history_dataset_association_subset USING btree (history_dataset_association_id);


--
-- Name: ix_hda_subset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_hda_subset_id ON public.history_dataset_association_subset USING btree (history_dataset_association_subset_id);


--
-- Name: ix_history_anno_assoc_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_anno_assoc_annotation ON public.history_annotation_association USING btree (annotation);


--
-- Name: ix_history_annotation_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_annotation_association_history_id ON public.history_annotation_association USING btree (history_id);


--
-- Name: ix_history_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_annotation_association_user_id ON public.history_annotation_association USING btree (user_id);


--
-- Name: ix_history_dataset_anno_assoc_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_anno_assoc_annotation ON public.history_dataset_association_annotation_association USING btree (annotation);


--
-- Name: ix_history_dataset_association_annotation_association_h_e624; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_annotation_association_h_e624 ON public.history_dataset_association_annotation_association USING btree (history_dataset_association_id);


--
-- Name: ix_history_dataset_association_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_annotation_association_user_id ON public.history_dataset_association_annotation_association USING btree (user_id);


--
-- Name: ix_history_dataset_association_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_dataset_id ON public.history_dataset_association USING btree (dataset_id);


--
-- Name: ix_history_dataset_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_deleted ON public.history_dataset_association USING btree (deleted);


--
-- Name: ix_history_dataset_association_display_at_authorization_9dc8; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_display_at_authorization_9dc8 ON public.history_dataset_association_display_at_authorization USING btree (update_time);


--
-- Name: ix_history_dataset_association_display_at_authorization_a293; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_display_at_authorization_a293 ON public.history_dataset_association_display_at_authorization USING btree (history_dataset_association_id);


--
-- Name: ix_history_dataset_association_display_at_authorization_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_display_at_authorization_user_id ON public.history_dataset_association_display_at_authorization USING btree (user_id);


--
-- Name: ix_history_dataset_association_history_extended_metadata_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_history_extended_metadata_id ON public.history_dataset_association_history USING btree (extended_metadata_id);


--
-- Name: ix_history_dataset_association_history_history_dataset__5f1c; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_history_history_dataset__5f1c ON public.history_dataset_association_history USING btree (history_dataset_association_id);


--
-- Name: ix_history_dataset_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_history_id ON public.history_dataset_association USING btree (history_id);


--
-- Name: ix_history_dataset_association_history_version; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_history_version ON public.history_dataset_association_history USING btree (version);


--
-- Name: ix_history_dataset_association_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_purged ON public.history_dataset_association USING btree (purged);


--
-- Name: ix_history_dataset_association_rating_association_histo_2052; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_rating_association_histo_2052 ON public.history_dataset_association_rating_association USING btree (history_dataset_association_id);


--
-- Name: ix_history_dataset_association_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_rating_association_rating ON public.history_dataset_association_rating_association USING btree (rating);


--
-- Name: ix_history_dataset_association_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_rating_association_user_id ON public.history_dataset_association_rating_association USING btree (user_id);


--
-- Name: ix_history_dataset_association_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_state ON public.history_dataset_association USING btree (state);


--
-- Name: ix_history_dataset_association_subset_location; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_subset_location ON public.history_dataset_association_subset USING btree (location);


--
-- Name: ix_history_dataset_association_tag_association_history__d2de; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_history__d2de ON public.history_dataset_association_tag_association USING btree (history_dataset_association_id);


--
-- Name: ix_history_dataset_association_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_tag_id ON public.history_dataset_association_tag_association USING btree (tag_id);


--
-- Name: ix_history_dataset_association_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_user_id ON public.history_dataset_association_tag_association USING btree (user_id);


--
-- Name: ix_history_dataset_association_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_user_tname ON public.history_dataset_association_tag_association USING btree (user_tname);


--
-- Name: ix_history_dataset_association_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_user_value ON public.history_dataset_association_tag_association USING btree (user_value);


--
-- Name: ix_history_dataset_association_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_association_tag_association_value ON public.history_dataset_association_tag_association USING btree (value);


--
-- Name: ix_history_dataset_collection_annotation_association_hi_f516; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_annotation_association_hi_f516 ON public.history_dataset_collection_annotation_association USING btree (history_dataset_collection_id);


--
-- Name: ix_history_dataset_collection_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_annotation_association_user_id ON public.history_dataset_collection_annotation_association USING btree (user_id);


--
-- Name: ix_history_dataset_collection_association_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_association_collection_id ON public.history_dataset_collection_association USING btree (collection_id);


--
-- Name: ix_history_dataset_collection_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_association_history_id ON public.history_dataset_collection_association USING btree (history_id);


--
-- Name: ix_history_dataset_collection_rating_association_histor_c7e9; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_rating_association_histor_c7e9 ON public.history_dataset_collection_rating_association USING btree (history_dataset_collection_id);


--
-- Name: ix_history_dataset_collection_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_rating_association_rating ON public.history_dataset_collection_rating_association USING btree (rating);


--
-- Name: ix_history_dataset_collection_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_rating_association_user_id ON public.history_dataset_collection_rating_association USING btree (user_id);


--
-- Name: ix_history_dataset_collection_tag_association_history_d_f807; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_history_d_f807 ON public.history_dataset_collection_tag_association USING btree (history_dataset_collection_id);


--
-- Name: ix_history_dataset_collection_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_tag_id ON public.history_dataset_collection_tag_association USING btree (tag_id);


--
-- Name: ix_history_dataset_collection_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_user_id ON public.history_dataset_collection_tag_association USING btree (user_id);


--
-- Name: ix_history_dataset_collection_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_user_tname ON public.history_dataset_collection_tag_association USING btree (user_tname);


--
-- Name: ix_history_dataset_collection_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_user_value ON public.history_dataset_collection_tag_association USING btree (user_value);


--
-- Name: ix_history_dataset_collection_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_dataset_collection_tag_association_value ON public.history_dataset_collection_tag_association USING btree (value);


--
-- Name: ix_history_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_deleted ON public.history USING btree (deleted);


--
-- Name: ix_history_importable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_importable ON public.history USING btree (importable);


--
-- Name: ix_history_importing; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_importing ON public.history USING btree (importing);


--
-- Name: ix_history_published; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_published ON public.history USING btree (published);


--
-- Name: ix_history_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_purged ON public.history USING btree (purged);


--
-- Name: ix_history_rating_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_rating_association_history_id ON public.history_rating_association USING btree (history_id);


--
-- Name: ix_history_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_rating_association_rating ON public.history_rating_association USING btree (rating);


--
-- Name: ix_history_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_rating_association_user_id ON public.history_rating_association USING btree (user_id);


--
-- Name: ix_history_slug; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_slug ON public.history USING btree (slug);


--
-- Name: ix_history_tag_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_history_id ON public.history_tag_association USING btree (history_id);


--
-- Name: ix_history_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_tag_id ON public.history_tag_association USING btree (tag_id);


--
-- Name: ix_history_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_user_id ON public.history_tag_association USING btree (user_id);


--
-- Name: ix_history_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_user_tname ON public.history_tag_association USING btree (user_tname);


--
-- Name: ix_history_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_user_value ON public.history_tag_association USING btree (user_value);


--
-- Name: ix_history_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_tag_association_value ON public.history_tag_association USING btree (value);


--
-- Name: ix_history_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_update_time ON public.history USING btree (update_time);


--
-- Name: ix_history_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_user_id ON public.history USING btree (user_id);


--
-- Name: ix_history_user_share_association_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_user_share_association_history_id ON public.history_user_share_association USING btree (history_id);


--
-- Name: ix_history_user_share_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_history_user_share_association_user_id ON public.history_user_share_association USING btree (user_id);


--
-- Name: ix_icda_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_icda_ldda_id ON public.implicitly_converted_dataset_association USING btree (ldda_id);


--
-- Name: ix_icda_ldda_parent_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_icda_ldda_parent_id ON public.implicitly_converted_dataset_association USING btree (ldda_parent_id);


--
-- Name: ix_implicit_collection_jobs_job_association_implicit_co_ea04; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicit_collection_jobs_job_association_implicit_co_ea04 ON public.implicit_collection_jobs_job_association USING btree (implicit_collection_jobs_id);


--
-- Name: ix_implicit_collection_jobs_job_association_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicit_collection_jobs_job_association_job_id ON public.implicit_collection_jobs_job_association USING btree (job_id);


--
-- Name: ix_implicitly_converted_dataset_assoc_ldda_parent_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_dataset_assoc_ldda_parent_id ON public.implicitly_converted_dataset_association USING btree (ldda_parent_id);


--
-- Name: ix_implicitly_converted_dataset_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_dataset_association_deleted ON public.implicitly_converted_dataset_association USING btree (deleted);


--
-- Name: ix_implicitly_converted_dataset_association_hda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_dataset_association_hda_id ON public.implicitly_converted_dataset_association USING btree (hda_id);


--
-- Name: ix_implicitly_converted_dataset_association_hda_parent_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_dataset_association_hda_parent_id ON public.implicitly_converted_dataset_association USING btree (hda_parent_id);


--
-- Name: ix_implicitly_converted_dataset_association_metadata_safe; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_dataset_association_metadata_safe ON public.implicitly_converted_dataset_association USING btree (metadata_safe);


--
-- Name: ix_implicitly_converted_ds_assoc_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_converted_ds_assoc_ldda_id ON public.implicitly_converted_dataset_association USING btree (ldda_id);


--
-- Name: ix_implicitly_created_dataset_collection_inputs_dataset_5590; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_created_dataset_collection_inputs_dataset_5590 ON public.implicitly_created_dataset_collection_inputs USING btree (dataset_collection_id);


--
-- Name: ix_implicitly_created_dataset_collection_inputs_input_d_b5c7; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_implicitly_created_dataset_collection_inputs_input_d_b5c7 ON public.implicitly_created_dataset_collection_inputs USING btree (input_dataset_collection_id);


--
-- Name: ix_jeom_library_dataset_dataset_association_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_jeom_library_dataset_dataset_association_id ON public.job_external_output_metadata USING btree (library_dataset_dataset_association_id);


--
-- Name: ix_job_export_history_archive_compressed; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_export_history_archive_compressed ON public.job_export_history_archive USING btree (compressed);


--
-- Name: ix_job_export_history_archive_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_export_history_archive_dataset_id ON public.job_export_history_archive USING btree (dataset_id);


--
-- Name: ix_job_export_history_archive_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_export_history_archive_history_id ON public.job_export_history_archive USING btree (history_id);


--
-- Name: ix_job_export_history_archive_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_export_history_archive_job_id ON public.job_export_history_archive USING btree (job_id);


--
-- Name: ix_job_external_output_metadata_history_dataset_association_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_external_output_metadata_history_dataset_association_id ON public.job_external_output_metadata USING btree (history_dataset_association_id);


--
-- Name: ix_job_external_output_metadata_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_external_output_metadata_job_id ON public.job_external_output_metadata USING btree (job_id);


--
-- Name: ix_job_handler; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_handler ON public.job USING btree (handler);


--
-- Name: ix_job_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_history_id ON public.job USING btree (history_id);


--
-- Name: ix_job_import_history_archive_history_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_import_history_archive_history_id ON public.job_import_history_archive USING btree (history_id);


--
-- Name: ix_job_import_history_archive_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_import_history_archive_job_id ON public.job_import_history_archive USING btree (job_id);


--
-- Name: ix_job_imported; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_imported ON public.job USING btree (imported);


--
-- Name: ix_job_library_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_library_folder_id ON public.job USING btree (library_folder_id);


--
-- Name: ix_job_metric_numeric_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_metric_numeric_job_id ON public.job_metric_numeric USING btree (job_id);


--
-- Name: ix_job_metric_text_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_metric_text_job_id ON public.job_metric_text USING btree (job_id);


--
-- Name: ix_job_object_store_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_object_store_id ON public.job USING btree (object_store_id);


--
-- Name: ix_job_parameter_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_parameter_job_id ON public.job_parameter USING btree (job_id);


--
-- Name: ix_job_params; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_params ON public.job USING btree (params);


--
-- Name: ix_job_session_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_session_id ON public.job USING btree (session_id);


--
-- Name: ix_job_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_state ON public.job USING btree (state);


--
-- Name: ix_job_state_history_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_state_history_job_id ON public.job_state_history USING btree (job_id);


--
-- Name: ix_job_state_history_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_state_history_state ON public.job_state_history USING btree (state);


--
-- Name: ix_job_to_implicit_output_dataset_collection_dataset_co_c788; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_implicit_output_dataset_collection_dataset_co_c788 ON public.job_to_implicit_output_dataset_collection USING btree (dataset_collection_id);


--
-- Name: ix_job_to_implicit_output_dataset_collection_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_implicit_output_dataset_collection_job_id ON public.job_to_implicit_output_dataset_collection USING btree (job_id);


--
-- Name: ix_job_to_input_dataset_collection_dataset_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_dataset_collection_dataset_collection_id ON public.job_to_input_dataset_collection USING btree (dataset_collection_id);


--
-- Name: ix_job_to_input_dataset_collection_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_dataset_collection_job_id ON public.job_to_input_dataset_collection USING btree (job_id);


--
-- Name: ix_job_to_input_dataset_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_dataset_dataset_id ON public.job_to_input_dataset USING btree (dataset_id);


--
-- Name: ix_job_to_input_dataset_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_dataset_job_id ON public.job_to_input_dataset USING btree (job_id);


--
-- Name: ix_job_to_input_library_dataset_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_library_dataset_job_id ON public.job_to_input_library_dataset USING btree (job_id);


--
-- Name: ix_job_to_input_library_dataset_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_input_library_dataset_ldda_id ON public.job_to_input_library_dataset USING btree (ldda_id);


--
-- Name: ix_job_to_output_dataset_collection_dataset_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_dataset_collection_dataset_collection_id ON public.job_to_output_dataset_collection USING btree (dataset_collection_id);


--
-- Name: ix_job_to_output_dataset_collection_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_dataset_collection_job_id ON public.job_to_output_dataset_collection USING btree (job_id);


--
-- Name: ix_job_to_output_dataset_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_dataset_dataset_id ON public.job_to_output_dataset USING btree (dataset_id);


--
-- Name: ix_job_to_output_dataset_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_dataset_job_id ON public.job_to_output_dataset USING btree (job_id);


--
-- Name: ix_job_to_output_library_dataset_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_library_dataset_job_id ON public.job_to_output_library_dataset USING btree (job_id);


--
-- Name: ix_job_to_output_library_dataset_ldda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_to_output_library_dataset_ldda_id ON public.job_to_output_library_dataset USING btree (ldda_id);


--
-- Name: ix_job_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_job_user_id ON public.job USING btree (user_id);


--
-- Name: ix_kombu_message_timestamp; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_kombu_message_timestamp ON public.kombu_message USING btree ("timestamp");


--
-- Name: ix_kombu_message_timestamp_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_kombu_message_timestamp_id ON public.kombu_message USING btree ("timestamp", id);


--
-- Name: ix_kombu_message_visible; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_kombu_message_visible ON public.kombu_message USING btree (visible);


--
-- Name: ix_lddap_library_dataset_dataset_association_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lddap_library_dataset_dataset_association_id ON public.library_dataset_dataset_association_permissions USING btree (library_dataset_dataset_association_id);


--
-- Name: ix_lddia_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lddia_deleted ON public.library_dataset_dataset_info_association USING btree (deleted);


--
-- Name: ix_lfia_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lfia_deleted ON public.library_folder_info_association USING btree (deleted);


--
-- Name: ix_lfia_inheritable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lfia_inheritable ON public.library_folder_info_association USING btree (inheritable);


--
-- Name: ix_lia_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lia_deleted ON public.library_info_association USING btree (deleted);


--
-- Name: ix_lia_inheritable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_lia_inheritable ON public.library_info_association USING btree (inheritable);


--
-- Name: ix_library_dataset_collection_annotation_association_li_8a3d; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_annotation_association_li_8a3d ON public.library_dataset_collection_annotation_association USING btree (library_dataset_collection_id);


--
-- Name: ix_library_dataset_collection_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_annotation_association_user_id ON public.library_dataset_collection_annotation_association USING btree (user_id);


--
-- Name: ix_library_dataset_collection_association_collection_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_association_collection_id ON public.library_dataset_collection_association USING btree (collection_id);


--
-- Name: ix_library_dataset_collection_association_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_association_folder_id ON public.library_dataset_collection_association USING btree (folder_id);


--
-- Name: ix_library_dataset_collection_rating_association_librar_877d; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_rating_association_librar_877d ON public.library_dataset_collection_rating_association USING btree (library_dataset_collection_id);


--
-- Name: ix_library_dataset_collection_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_rating_association_rating ON public.library_dataset_collection_rating_association USING btree (rating);


--
-- Name: ix_library_dataset_collection_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_rating_association_user_id ON public.library_dataset_collection_rating_association USING btree (user_id);


--
-- Name: ix_library_dataset_collection_tag_association_library_d_41b1; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_library_d_41b1 ON public.library_dataset_collection_tag_association USING btree (library_dataset_collection_id);


--
-- Name: ix_library_dataset_collection_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_tag_id ON public.library_dataset_collection_tag_association USING btree (tag_id);


--
-- Name: ix_library_dataset_collection_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_user_id ON public.library_dataset_collection_tag_association USING btree (user_id);


--
-- Name: ix_library_dataset_collection_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_user_tname ON public.library_dataset_collection_tag_association USING btree (user_tname);


--
-- Name: ix_library_dataset_collection_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_user_value ON public.library_dataset_collection_tag_association USING btree (user_value);


--
-- Name: ix_library_dataset_collection_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_collection_tag_association_value ON public.library_dataset_collection_tag_association USING btree (value);


--
-- Name: ix_library_dataset_dataset_association_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_dataset_id ON public.library_dataset_dataset_association USING btree (dataset_id);


--
-- Name: ix_library_dataset_dataset_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_deleted ON public.library_dataset_dataset_association USING btree (deleted);


--
-- Name: ix_library_dataset_dataset_association_library_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_library_dataset_id ON public.library_dataset_dataset_association USING btree (library_dataset_id);


--
-- Name: ix_library_dataset_dataset_association_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_name ON public.library_dataset_dataset_association USING btree (name);


--
-- Name: ix_library_dataset_dataset_association_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_permissions_role_id ON public.library_dataset_dataset_association_permissions USING btree (role_id);


--
-- Name: ix_library_dataset_dataset_association_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_state ON public.library_dataset_dataset_association USING btree (state);


--
-- Name: ix_library_dataset_dataset_association_tag_association__087f; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association__087f ON public.library_dataset_dataset_association_tag_association USING btree (user_value);


--
-- Name: ix_library_dataset_dataset_association_tag_association__3501; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association__3501 ON public.library_dataset_dataset_association_tag_association USING btree (user_tname);


--
-- Name: ix_library_dataset_dataset_association_tag_association__f6fd; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association__f6fd ON public.library_dataset_dataset_association_tag_association USING btree (library_dataset_dataset_association_id);


--
-- Name: ix_library_dataset_dataset_association_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association_tag_id ON public.library_dataset_dataset_association_tag_association USING btree (tag_id);


--
-- Name: ix_library_dataset_dataset_association_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association_user_id ON public.library_dataset_dataset_association_tag_association USING btree (user_id);


--
-- Name: ix_library_dataset_dataset_association_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_tag_association_value ON public.library_dataset_dataset_association_tag_association USING btree (value);


--
-- Name: ix_library_dataset_dataset_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_association_user_id ON public.library_dataset_dataset_association USING btree (user_id);


--
-- Name: ix_library_dataset_dataset_info_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_info_association_deleted ON public.library_dataset_dataset_info_association USING btree (deleted);


--
-- Name: ix_library_dataset_dataset_info_association_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_info_association_form_definition_id ON public.library_dataset_dataset_info_association USING btree (form_definition_id);


--
-- Name: ix_library_dataset_dataset_info_association_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_info_association_form_values_id ON public.library_dataset_dataset_info_association USING btree (form_values_id);


--
-- Name: ix_library_dataset_dataset_info_association_library_dat_ceca; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_dataset_info_association_library_dat_ceca ON public.library_dataset_dataset_info_association USING btree (library_dataset_dataset_association_id);


--
-- Name: ix_library_dataset_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_deleted ON public.library_dataset USING btree (deleted);


--
-- Name: ix_library_dataset_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_folder_id ON public.library_dataset USING btree (folder_id);


--
-- Name: ix_library_dataset_library_dataset_dataset_association_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_library_dataset_dataset_association_id ON public.library_dataset USING btree (library_dataset_dataset_association_id);


--
-- Name: ix_library_dataset_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_name ON public.library_dataset USING btree (name);


--
-- Name: ix_library_dataset_permissions_library_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_permissions_library_dataset_id ON public.library_dataset_permissions USING btree (library_dataset_id);


--
-- Name: ix_library_dataset_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_permissions_role_id ON public.library_dataset_permissions USING btree (role_id);


--
-- Name: ix_library_dataset_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_dataset_purged ON public.library_dataset USING btree (purged);


--
-- Name: ix_library_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_deleted ON public.library USING btree (deleted);


--
-- Name: ix_library_folder_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_deleted ON public.library_folder USING btree (deleted);


--
-- Name: ix_library_folder_info_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_info_association_deleted ON public.library_folder_info_association USING btree (deleted);


--
-- Name: ix_library_folder_info_association_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_info_association_form_definition_id ON public.library_folder_info_association USING btree (form_definition_id);


--
-- Name: ix_library_folder_info_association_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_info_association_form_values_id ON public.library_folder_info_association USING btree (form_values_id);


--
-- Name: ix_library_folder_info_association_inheritable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_info_association_inheritable ON public.library_folder_info_association USING btree (inheritable);


--
-- Name: ix_library_folder_info_association_library_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_info_association_library_folder_id ON public.library_folder_info_association USING btree (library_folder_id);


--
-- Name: ix_library_folder_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_name ON public.library_folder USING btree (name);


--
-- Name: ix_library_folder_parent_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_parent_id ON public.library_folder USING btree (parent_id);


--
-- Name: ix_library_folder_permissions_library_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_permissions_library_folder_id ON public.library_folder_permissions USING btree (library_folder_id);


--
-- Name: ix_library_folder_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_permissions_role_id ON public.library_folder_permissions USING btree (role_id);


--
-- Name: ix_library_folder_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_folder_purged ON public.library_folder USING btree (purged);


--
-- Name: ix_library_info_association_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_info_association_deleted ON public.library_info_association USING btree (deleted);


--
-- Name: ix_library_info_association_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_info_association_form_definition_id ON public.library_info_association USING btree (form_definition_id);


--
-- Name: ix_library_info_association_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_info_association_form_values_id ON public.library_info_association USING btree (form_values_id);


--
-- Name: ix_library_info_association_inheritable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_info_association_inheritable ON public.library_info_association USING btree (inheritable);


--
-- Name: ix_library_info_association_library_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_info_association_library_id ON public.library_info_association USING btree (library_id);


--
-- Name: ix_library_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_name ON public.library USING btree (name);


--
-- Name: ix_library_permissions_library_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_permissions_library_id ON public.library_permissions USING btree (library_id);


--
-- Name: ix_library_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_permissions_role_id ON public.library_permissions USING btree (role_id);


--
-- Name: ix_library_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_purged ON public.library USING btree (purged);


--
-- Name: ix_library_root_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_library_root_folder_id ON public.library USING btree (root_folder_id);


--
-- Name: ix_metadata_file_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_deleted ON public.metadata_file USING btree (deleted);


--
-- Name: ix_metadata_file_hda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_hda_id ON public.metadata_file USING btree (hda_id);


--
-- Name: ix_metadata_file_lda_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_lda_id ON public.metadata_file USING btree (lda_id);


--
-- Name: ix_metadata_file_object_store_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_object_store_id ON public.metadata_file USING btree (object_store_id);


--
-- Name: ix_metadata_file_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_purged ON public.metadata_file USING btree (purged);


--
-- Name: ix_metadata_file_update_time; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_metadata_file_update_time ON public.metadata_file USING btree (update_time);


--
-- Name: ix_oidc_user_authnz_tokens_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_oidc_user_authnz_tokens_user_id ON public.oidc_user_authnz_tokens USING btree (user_id);


--
-- Name: ix_page_annotation_association_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_annotation_association_annotation ON public.page_annotation_association USING btree (annotation);


--
-- Name: ix_page_annotation_association_page_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_annotation_association_page_id ON public.page_annotation_association USING btree (page_id);


--
-- Name: ix_page_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_annotation_association_user_id ON public.page_annotation_association USING btree (user_id);


--
-- Name: ix_page_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_deleted ON public.page USING btree (deleted);


--
-- Name: ix_page_importable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_importable ON public.page USING btree (importable);


--
-- Name: ix_page_latest_revision_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_latest_revision_id ON public.page USING btree (latest_revision_id);


--
-- Name: ix_page_published; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_published ON public.page USING btree (published);


--
-- Name: ix_page_rating_association_page_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_rating_association_page_id ON public.page_rating_association USING btree (page_id);


--
-- Name: ix_page_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_rating_association_rating ON public.page_rating_association USING btree (rating);


--
-- Name: ix_page_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_rating_association_user_id ON public.page_rating_association USING btree (user_id);


--
-- Name: ix_page_revision_page_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_revision_page_id ON public.page_revision USING btree (page_id);


--
-- Name: ix_page_slug; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_slug ON public.page USING btree (slug);


--
-- Name: ix_page_tag_association_page_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_page_id ON public.page_tag_association USING btree (page_id);


--
-- Name: ix_page_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_tag_id ON public.page_tag_association USING btree (tag_id);


--
-- Name: ix_page_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_user_id ON public.page_tag_association USING btree (user_id);


--
-- Name: ix_page_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_user_tname ON public.page_tag_association USING btree (user_tname);


--
-- Name: ix_page_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_user_value ON public.page_tag_association USING btree (user_value);


--
-- Name: ix_page_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_tag_association_value ON public.page_tag_association USING btree (value);


--
-- Name: ix_page_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_user_id ON public.page USING btree (user_id);


--
-- Name: ix_page_user_share_association_page_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_user_share_association_page_id ON public.page_user_share_association USING btree (page_id);


--
-- Name: ix_page_user_share_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_page_user_share_association_user_id ON public.page_user_share_association USING btree (user_id);


--
-- Name: ix_password_reset_token_token; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_password_reset_token_token ON public.password_reset_token USING btree (token);


--
-- Name: ix_password_reset_token_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_password_reset_token_user_id ON public.password_reset_token USING btree (user_id);


--
-- Name: ix_post_job_action_association_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_post_job_action_association_job_id ON public.post_job_action_association USING btree (job_id);


--
-- Name: ix_post_job_action_association_post_job_action_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_post_job_action_association_post_job_action_id ON public.post_job_action_association USING btree (post_job_action_id);


--
-- Name: ix_post_job_action_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_post_job_action_workflow_step_id ON public.post_job_action USING btree (workflow_step_id);


--
-- Name: ix_quota_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_quota_deleted ON public.quota USING btree (deleted);


--
-- Name: ix_quota_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_quota_name ON public.quota USING btree (name);


--
-- Name: ix_repository_dependency_tool_shed_repository_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_repository_dependency_tool_shed_repository_id ON public.repository_dependency USING btree (tool_shed_repository_id);


--
-- Name: ix_repository_repository_dependency_association_reposit_c823; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_repository_repository_dependency_association_reposit_c823 ON public.repository_repository_dependency_association USING btree (repository_dependency_id);


--
-- Name: ix_repository_repository_dependency_association_tool_sh_0af8; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_repository_repository_dependency_association_tool_sh_0af8 ON public.repository_repository_dependency_association USING btree (tool_shed_repository_id);


--
-- Name: ix_request_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_deleted ON public.request USING btree (deleted);


--
-- Name: ix_request_event_request_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_event_request_id ON public.request_event USING btree (request_id);


--
-- Name: ix_request_event_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_event_state ON public.request_event USING btree (state);


--
-- Name: ix_request_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_form_values_id ON public.request USING btree (form_values_id);


--
-- Name: ix_request_notification; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_notification ON public.request USING btree (notification);


--
-- Name: ix_request_request_type_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_request_type_id ON public.request USING btree (request_type_id);


--
-- Name: ix_request_type_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_deleted ON public.request_type USING btree (deleted);


--
-- Name: ix_request_type_external_service_association_external_s_e501; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_external_service_association_external_s_e501 ON public.request_type_external_service_association USING btree (external_service_id);


--
-- Name: ix_request_type_external_service_association_request_type_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_external_service_association_request_type_id ON public.request_type_external_service_association USING btree (request_type_id);


--
-- Name: ix_request_type_permissions_request_type_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_permissions_request_type_id ON public.request_type_permissions USING btree (request_type_id);


--
-- Name: ix_request_type_permissions_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_permissions_role_id ON public.request_type_permissions USING btree (role_id);


--
-- Name: ix_request_type_request_form_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_request_form_id ON public.request_type USING btree (request_form_id);


--
-- Name: ix_request_type_run_association_request_type_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_run_association_request_type_id ON public.request_type_run_association USING btree (request_type_id);


--
-- Name: ix_request_type_run_association_run_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_run_association_run_id ON public.request_type_run_association USING btree (run_id);


--
-- Name: ix_request_type_sample_form_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_type_sample_form_id ON public.request_type USING btree (sample_form_id);


--
-- Name: ix_request_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_request_user_id ON public.request USING btree (user_id);


--
-- Name: ix_role_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_role_deleted ON public.role USING btree (deleted);


--
-- Name: ix_role_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE UNIQUE INDEX ix_role_name ON public.role USING btree (name);


--
-- Name: ix_role_type; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_role_type ON public.role USING btree (type);


--
-- Name: ix_run_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_run_deleted ON public.run USING btree (deleted);


--
-- Name: ix_run_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_run_form_definition_id ON public.run USING btree (form_definition_id);


--
-- Name: ix_run_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_run_form_values_id ON public.run USING btree (form_values_id);


--
-- Name: ix_run_subindex; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_run_subindex ON public.run USING btree (subindex);


--
-- Name: ix_sample_bar_code; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_bar_code ON public.sample USING btree (bar_code);


--
-- Name: ix_sample_dataset_external_service_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_dataset_external_service_id ON public.sample_dataset USING btree (external_service_id);


--
-- Name: ix_sample_dataset_sample_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_dataset_sample_id ON public.sample_dataset USING btree (sample_id);


--
-- Name: ix_sample_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_deleted ON public.sample USING btree (deleted);


--
-- Name: ix_sample_event_sample_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_event_sample_id ON public.sample_event USING btree (sample_id);


--
-- Name: ix_sample_event_sample_state_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_event_sample_state_id ON public.sample_event USING btree (sample_state_id);


--
-- Name: ix_sample_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_folder_id ON public.sample USING btree (folder_id);


--
-- Name: ix_sample_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_form_values_id ON public.sample USING btree (form_values_id);


--
-- Name: ix_sample_library_folder_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_library_folder_id ON public.sample USING btree (folder_id);


--
-- Name: ix_sample_library_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_library_id ON public.sample USING btree (library_id);


--
-- Name: ix_sample_request_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_request_id ON public.sample USING btree (request_id);


--
-- Name: ix_sample_run_association_run_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_run_association_run_id ON public.sample_run_association USING btree (run_id);


--
-- Name: ix_sample_run_association_sample_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_run_association_sample_id ON public.sample_run_association USING btree (sample_id);


--
-- Name: ix_sample_state_request_type_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sample_state_request_type_id ON public.sample_state USING btree (request_type_id);


--
-- Name: ix_sd_external_service_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sd_external_service_id ON public.sample_dataset USING btree (external_service_id);


--
-- Name: ix_sequencer_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sequencer_deleted ON public.external_service USING btree (deleted);


--
-- Name: ix_sequencer_form_definition_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sequencer_form_definition_id ON public.external_service USING btree (form_definition_id);


--
-- Name: ix_sequencer_form_values_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_sequencer_form_values_id ON public.external_service USING btree (form_values_id);


--
-- Name: ix_stored_workflow_ann_assoc_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_ann_assoc_annotation ON public.stored_workflow_annotation_association USING btree (annotation);


--
-- Name: ix_stored_workflow_annotation_association_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_annotation_association_stored_workflow_id ON public.stored_workflow_annotation_association USING btree (stored_workflow_id);


--
-- Name: ix_stored_workflow_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_annotation_association_user_id ON public.stored_workflow_annotation_association USING btree (user_id);


--
-- Name: ix_stored_workflow_latest_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_latest_workflow_id ON public.stored_workflow USING btree (latest_workflow_id);


--
-- Name: ix_stored_workflow_menu_entry_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_menu_entry_stored_workflow_id ON public.stored_workflow_menu_entry USING btree (stored_workflow_id);


--
-- Name: ix_stored_workflow_menu_entry_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_menu_entry_user_id ON public.stored_workflow_menu_entry USING btree (user_id);


--
-- Name: ix_stored_workflow_published; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_published ON public.stored_workflow USING btree (published);


--
-- Name: ix_stored_workflow_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_rating_association_rating ON public.stored_workflow_rating_association USING btree (rating);


--
-- Name: ix_stored_workflow_rating_association_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_rating_association_stored_workflow_id ON public.stored_workflow_rating_association USING btree (stored_workflow_id);


--
-- Name: ix_stored_workflow_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_rating_association_user_id ON public.stored_workflow_rating_association USING btree (user_id);


--
-- Name: ix_stored_workflow_slug; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_slug ON public.stored_workflow USING btree (slug);


--
-- Name: ix_stored_workflow_tag_association_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_stored_workflow_id ON public.stored_workflow_tag_association USING btree (stored_workflow_id);


--
-- Name: ix_stored_workflow_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_tag_id ON public.stored_workflow_tag_association USING btree (tag_id);


--
-- Name: ix_stored_workflow_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_user_id ON public.stored_workflow_tag_association USING btree (user_id);


--
-- Name: ix_stored_workflow_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_user_tname ON public.stored_workflow_tag_association USING btree (user_tname);


--
-- Name: ix_stored_workflow_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_user_value ON public.stored_workflow_tag_association USING btree (user_value);


--
-- Name: ix_stored_workflow_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_tag_association_value ON public.stored_workflow_tag_association USING btree (value);


--
-- Name: ix_stored_workflow_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_user_id ON public.stored_workflow USING btree (user_id);


--
-- Name: ix_stored_workflow_user_share_connection_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_user_share_connection_stored_workflow_id ON public.stored_workflow_user_share_connection USING btree (stored_workflow_id);


--
-- Name: ix_stored_workflow_user_share_connection_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_stored_workflow_user_share_connection_user_id ON public.stored_workflow_user_share_connection USING btree (user_id);


--
-- Name: ix_task_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_task_job_id ON public.task USING btree (job_id);


--
-- Name: ix_task_metric_numeric_task_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_task_metric_numeric_task_id ON public.task_metric_numeric USING btree (task_id);


--
-- Name: ix_task_metric_text_task_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_task_metric_text_task_id ON public.task_metric_text USING btree (task_id);


--
-- Name: ix_task_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_task_state ON public.task USING btree (state);


--
-- Name: ix_tool_dependency_tool_shed_repository_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_dependency_tool_shed_repository_id ON public.tool_dependency USING btree (tool_shed_repository_id);


--
-- Name: ix_tool_shed_repository_changeset_revision; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_changeset_revision ON public.tool_shed_repository USING btree (changeset_revision);


--
-- Name: ix_tool_shed_repository_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_deleted ON public.tool_shed_repository USING btree (deleted);


--
-- Name: ix_tool_shed_repository_includes_datatypes; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_includes_datatypes ON public.tool_shed_repository USING btree (includes_datatypes);


--
-- Name: ix_tool_shed_repository_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_name ON public.tool_shed_repository USING btree (name);


--
-- Name: ix_tool_shed_repository_owner; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_owner ON public.tool_shed_repository USING btree (owner);


--
-- Name: ix_tool_shed_repository_tool_shed; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_shed_repository_tool_shed ON public.tool_shed_repository USING btree (tool_shed);


--
-- Name: ix_tool_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_tag_id ON public.tool_tag_association USING btree (tag_id);


--
-- Name: ix_tool_tag_association_tool_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_tool_id ON public.tool_tag_association USING btree (tool_id);


--
-- Name: ix_tool_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_user_id ON public.tool_tag_association USING btree (user_id);


--
-- Name: ix_tool_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_user_tname ON public.tool_tag_association USING btree (user_tname);


--
-- Name: ix_tool_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_user_value ON public.tool_tag_association USING btree (user_value);


--
-- Name: ix_tool_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_tag_association_value ON public.tool_tag_association USING btree (value);


--
-- Name: ix_tool_version_association_parent_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_version_association_parent_id ON public.tool_version_association USING btree (parent_id);


--
-- Name: ix_tool_version_association_tool_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_version_association_tool_id ON public.tool_version_association USING btree (tool_id);


--
-- Name: ix_tool_version_tool_shed_repository_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tool_version_tool_shed_repository_id ON public.tool_version USING btree (tool_shed_repository_id);


--
-- Name: ix_transfer_job_state; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_transfer_job_state ON public.transfer_job USING btree (state);


--
-- Name: ix_tsr_includes_datatypes; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_tsr_includes_datatypes ON public.tool_shed_repository USING btree (includes_datatypes);


--
-- Name: ix_user_action_session_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_action_session_id ON public.user_action USING btree (session_id);


--
-- Name: ix_user_action_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_action_user_id ON public.user_action USING btree (user_id);


--
-- Name: ix_user_address_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_address_deleted ON public.user_address USING btree (deleted);


--
-- Name: ix_user_address_purged; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_address_purged ON public.user_address USING btree (purged);


--
-- Name: ix_user_address_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_address_user_id ON public.user_address USING btree (user_id);


--
-- Name: ix_user_group_association_group_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_group_association_group_id ON public.user_group_association USING btree (group_id);


--
-- Name: ix_user_group_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_group_association_user_id ON public.user_group_association USING btree (user_id);


--
-- Name: ix_user_preference_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_preference_name ON public.user_preference USING btree (name);


--
-- Name: ix_user_preference_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_preference_user_id ON public.user_preference USING btree (user_id);


--
-- Name: ix_user_quota_association_quota_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_quota_association_quota_id ON public.user_quota_association USING btree (quota_id);


--
-- Name: ix_user_quota_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_quota_association_user_id ON public.user_quota_association USING btree (user_id);


--
-- Name: ix_user_role_association_role_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_role_association_role_id ON public.user_role_association USING btree (role_id);


--
-- Name: ix_user_role_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_user_role_association_user_id ON public.user_role_association USING btree (user_id);


--
-- Name: ix_validation_error_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_validation_error_dataset_id ON public.validation_error USING btree (dataset_id);


--
-- Name: ix_visualization_annotation_association_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_annotation_association_annotation ON public.visualization_annotation_association USING btree (annotation);


--
-- Name: ix_visualization_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_annotation_association_user_id ON public.visualization_annotation_association USING btree (user_id);


--
-- Name: ix_visualization_annotation_association_visualization_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_annotation_association_visualization_id ON public.visualization_annotation_association USING btree (visualization_id);


--
-- Name: ix_visualization_dbkey; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_dbkey ON public.visualization USING btree (dbkey);


--
-- Name: ix_visualization_deleted; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_deleted ON public.visualization USING btree (deleted);


--
-- Name: ix_visualization_importable; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_importable ON public.visualization USING btree (importable);


--
-- Name: ix_visualization_latest_revision_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_latest_revision_id ON public.visualization USING btree (latest_revision_id);


--
-- Name: ix_visualization_published; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_published ON public.visualization USING btree (published);


--
-- Name: ix_visualization_rating_association_rating; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_rating_association_rating ON public.visualization_rating_association USING btree (rating);


--
-- Name: ix_visualization_rating_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_rating_association_user_id ON public.visualization_rating_association USING btree (user_id);


--
-- Name: ix_visualization_rating_association_visualization_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_rating_association_visualization_id ON public.visualization_rating_association USING btree (visualization_id);


--
-- Name: ix_visualization_revision_dbkey; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_revision_dbkey ON public.visualization_revision USING btree (dbkey);


--
-- Name: ix_visualization_revision_visualization_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_revision_visualization_id ON public.visualization_revision USING btree (visualization_id);


--
-- Name: ix_visualization_slug; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_slug ON public.visualization USING btree (slug);


--
-- Name: ix_visualization_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_tag_id ON public.visualization_tag_association USING btree (tag_id);


--
-- Name: ix_visualization_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_user_id ON public.visualization_tag_association USING btree (user_id);


--
-- Name: ix_visualization_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_user_tname ON public.visualization_tag_association USING btree (user_tname);


--
-- Name: ix_visualization_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_user_value ON public.visualization_tag_association USING btree (user_value);


--
-- Name: ix_visualization_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_value ON public.visualization_tag_association USING btree (value);


--
-- Name: ix_visualization_tag_association_visualization_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_tag_association_visualization_id ON public.visualization_tag_association USING btree (visualization_id);


--
-- Name: ix_visualization_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_user_id ON public.visualization USING btree (user_id);


--
-- Name: ix_visualization_user_share_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_user_share_association_user_id ON public.visualization_user_share_association USING btree (user_id);


--
-- Name: ix_visualization_user_share_association_visualization_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_visualization_user_share_association_visualization_id ON public.visualization_user_share_association USING btree (visualization_id);


--
-- Name: ix_wfinv_swfinv_swfi; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_wfinv_swfinv_swfi ON public.workflow_invocation_to_subworkflow_invocation_association USING btree (subworkflow_invocation_id);


--
-- Name: ix_wfinv_swfinv_wfi; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_wfinv_swfinv_wfi ON public.workflow_invocation_to_subworkflow_invocation_association USING btree (workflow_invocation_id);


--
-- Name: ix_wfreq_inputstep_wfi; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_wfreq_inputstep_wfi ON public.workflow_request_input_step_parameter USING btree (workflow_invocation_id);


--
-- Name: ix_worker_process_server_name; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_worker_process_server_name ON public.worker_process USING btree (server_name);


--
-- Name: ix_workflow_invocation_output_dataset_association_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_output_dataset_association_dataset_id ON public.workflow_invocation_output_dataset_association USING btree (dataset_id);


--
-- Name: ix_workflow_invocation_output_dataset_association_workf_5924; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_output_dataset_association_workf_5924 ON public.workflow_invocation_output_dataset_association USING btree (workflow_invocation_id);


--
-- Name: ix_workflow_invocation_output_dataset_collection_associ_ab6c; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_output_dataset_collection_associ_ab6c ON public.workflow_invocation_output_dataset_collection_association USING btree (workflow_invocation_id);


--
-- Name: ix_workflow_invocation_output_dataset_collection_associ_ec97; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_output_dataset_collection_associ_ec97 ON public.workflow_invocation_output_dataset_collection_association USING btree (dataset_collection_id);


--
-- Name: ix_workflow_invocation_step_job_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_job_id ON public.workflow_invocation_step USING btree (job_id);


--
-- Name: ix_workflow_invocation_step_output_dataset_association__66f5; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_output_dataset_association__66f5 ON public.workflow_invocation_step_output_dataset_association USING btree (dataset_id);


--
-- Name: ix_workflow_invocation_step_output_dataset_association__bcc0; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_output_dataset_association__bcc0 ON public.workflow_invocation_step_output_dataset_association USING btree (workflow_invocation_step_id);


--
-- Name: ix_workflow_invocation_step_output_dataset_collection_a_b73b; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_output_dataset_collection_a_b73b ON public.workflow_invocation_step_output_dataset_collection_association USING btree (dataset_collection_id);


--
-- Name: ix_workflow_invocation_step_output_dataset_collection_a_db49; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_output_dataset_collection_a_db49 ON public.workflow_invocation_step_output_dataset_collection_association USING btree (workflow_invocation_step_id);


--
-- Name: ix_workflow_invocation_step_workflow_invocation_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_workflow_invocation_id ON public.workflow_invocation_step USING btree (workflow_invocation_id);


--
-- Name: ix_workflow_invocation_step_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_step_workflow_step_id ON public.workflow_invocation_step USING btree (workflow_step_id);


--
-- Name: ix_workflow_invocation_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_invocation_workflow_id ON public.workflow_invocation USING btree (workflow_id);


--
-- Name: ix_workflow_output_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_output_workflow_step_id ON public.workflow_output USING btree (workflow_step_id);


--
-- Name: ix_workflow_request_to_input_collection_dataset_dataset_4671; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_request_to_input_collection_dataset_dataset_4671 ON public.workflow_request_to_input_collection_dataset USING btree (dataset_collection_id);


--
-- Name: ix_workflow_request_to_input_collection_dataset_workflo_7564; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_request_to_input_collection_dataset_workflo_7564 ON public.workflow_request_to_input_collection_dataset USING btree (workflow_invocation_id);


--
-- Name: ix_workflow_request_to_input_dataset_dataset_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_request_to_input_dataset_dataset_id ON public.workflow_request_to_input_dataset USING btree (dataset_id);


--
-- Name: ix_workflow_request_to_input_dataset_workflow_invocation_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_request_to_input_dataset_workflow_invocation_id ON public.workflow_request_to_input_dataset USING btree (workflow_invocation_id);


--
-- Name: ix_workflow_step_ann_assoc_annotation; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_ann_assoc_annotation ON public.workflow_step_annotation_association USING btree (annotation);


--
-- Name: ix_workflow_step_annotation_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_annotation_association_user_id ON public.workflow_step_annotation_association USING btree (user_id);


--
-- Name: ix_workflow_step_annotation_association_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_annotation_association_workflow_step_id ON public.workflow_step_annotation_association USING btree (workflow_step_id);


--
-- Name: ix_workflow_step_connection_input_step_input_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_connection_input_step_input_id ON public.workflow_step_connection USING btree (input_step_input_id);


--
-- Name: ix_workflow_step_connection_input_subworkflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_connection_input_subworkflow_step_id ON public.workflow_step_connection USING btree (input_subworkflow_step_id);


--
-- Name: ix_workflow_step_connection_output_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_connection_output_step_id ON public.workflow_step_connection USING btree (output_step_id);


--
-- Name: ix_workflow_step_input_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_input_workflow_step_id ON public.workflow_step_input USING btree (workflow_step_id);


--
-- Name: ix_workflow_step_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_tag_id ON public.workflow_step_tag_association USING btree (tag_id);


--
-- Name: ix_workflow_step_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_user_id ON public.workflow_step_tag_association USING btree (user_id);


--
-- Name: ix_workflow_step_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_user_tname ON public.workflow_step_tag_association USING btree (user_tname);


--
-- Name: ix_workflow_step_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_user_value ON public.workflow_step_tag_association USING btree (user_value);


--
-- Name: ix_workflow_step_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_value ON public.workflow_step_tag_association USING btree (value);


--
-- Name: ix_workflow_step_tag_association_workflow_step_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_tag_association_workflow_step_id ON public.workflow_step_tag_association USING btree (workflow_step_id);


--
-- Name: ix_workflow_step_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_step_workflow_id ON public.workflow_step USING btree (workflow_id);


--
-- Name: ix_workflow_stored_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_stored_workflow_id ON public.workflow USING btree (stored_workflow_id);


--
-- Name: ix_workflow_tag_association_tag_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_tag_id ON public.workflow_tag_association USING btree (tag_id);


--
-- Name: ix_workflow_tag_association_user_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_user_id ON public.workflow_tag_association USING btree (user_id);


--
-- Name: ix_workflow_tag_association_user_tname; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_user_tname ON public.workflow_tag_association USING btree (user_tname);


--
-- Name: ix_workflow_tag_association_user_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_user_value ON public.workflow_tag_association USING btree (user_value);


--
-- Name: ix_workflow_tag_association_value; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_value ON public.workflow_tag_association USING btree (value);


--
-- Name: ix_workflow_tag_association_workflow_id; Type: INDEX; Schema: public; Owner: galaxydbuser
--

CREATE INDEX ix_workflow_tag_association_workflow_id ON public.workflow_tag_association USING btree (workflow_id);


--
-- Name: kombu_message FK_kombu_message_queue; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.kombu_message
    ADD CONSTRAINT "FK_kombu_message_queue" FOREIGN KEY (queue_id) REFERENCES public.kombu_queue(id);


--
-- Name: api_keys api_keys_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.api_keys
    ADD CONSTRAINT api_keys_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: cleanup_event_dataset_association cleanup_event_dataset_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_dataset_association
    ADD CONSTRAINT cleanup_event_dataset_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_dataset_association cleanup_event_dataset_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_dataset_association
    ADD CONSTRAINT cleanup_event_dataset_association_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: cleanup_event_hda_association cleanup_event_hda_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_hda_association
    ADD CONSTRAINT cleanup_event_hda_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_hda_association cleanup_event_hda_association_hda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_hda_association
    ADD CONSTRAINT cleanup_event_hda_association_hda_id_fkey FOREIGN KEY (hda_id) REFERENCES public.history_dataset_association(id);


--
-- Name: cleanup_event_history_association cleanup_event_history_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_history_association
    ADD CONSTRAINT cleanup_event_history_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_history_association cleanup_event_history_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_history_association
    ADD CONSTRAINT cleanup_event_history_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: cleanup_event_icda_association cleanup_event_icda_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_icda_association
    ADD CONSTRAINT cleanup_event_icda_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_icda_association cleanup_event_icda_association_icda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_icda_association
    ADD CONSTRAINT cleanup_event_icda_association_icda_id_fkey FOREIGN KEY (icda_id) REFERENCES public.implicitly_converted_dataset_association(id);


--
-- Name: cleanup_event_ldda_association cleanup_event_ldda_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_ldda_association
    ADD CONSTRAINT cleanup_event_ldda_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_ldda_association cleanup_event_ldda_association_ldda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_ldda_association
    ADD CONSTRAINT cleanup_event_ldda_association_ldda_id_fkey FOREIGN KEY (ldda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: cleanup_event_library_association cleanup_event_library_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_association
    ADD CONSTRAINT cleanup_event_library_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_library_association cleanup_event_library_association_library_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_association
    ADD CONSTRAINT cleanup_event_library_association_library_id_fkey FOREIGN KEY (library_id) REFERENCES public.library(id);


--
-- Name: cleanup_event_library_dataset_association cleanup_event_library_dataset_associati_library_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_dataset_association
    ADD CONSTRAINT cleanup_event_library_dataset_associati_library_dataset_id_fkey FOREIGN KEY (library_dataset_id) REFERENCES public.library_dataset(id);


--
-- Name: cleanup_event_library_dataset_association cleanup_event_library_dataset_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_dataset_association
    ADD CONSTRAINT cleanup_event_library_dataset_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_library_folder_association cleanup_event_library_folder_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_folder_association
    ADD CONSTRAINT cleanup_event_library_folder_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_library_folder_association cleanup_event_library_folder_association_library_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_library_folder_association
    ADD CONSTRAINT cleanup_event_library_folder_association_library_folder_id_fkey FOREIGN KEY (library_folder_id) REFERENCES public.library_folder(id);


--
-- Name: cleanup_event_metadata_file_association cleanup_event_metadata_file_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_metadata_file_association
    ADD CONSTRAINT cleanup_event_metadata_file_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_metadata_file_association cleanup_event_metadata_file_association_metadata_file_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_metadata_file_association
    ADD CONSTRAINT cleanup_event_metadata_file_association_metadata_file_id_fkey FOREIGN KEY (metadata_file_id) REFERENCES public.metadata_file(id);


--
-- Name: cleanup_event_user_association cleanup_event_user_association_cleanup_event_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_user_association
    ADD CONSTRAINT cleanup_event_user_association_cleanup_event_id_fkey FOREIGN KEY (cleanup_event_id) REFERENCES public.cleanup_event(id);


--
-- Name: cleanup_event_user_association cleanup_event_user_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cleanup_event_user_association
    ADD CONSTRAINT cleanup_event_user_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: cloudauthz cloudauthz_authn_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cloudauthz
    ADD CONSTRAINT cloudauthz_authn_id_fkey FOREIGN KEY (authn_id) REFERENCES public.oidc_user_authnz_tokens(id);


--
-- Name: cloudauthz cloudauthz_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.cloudauthz
    ADD CONSTRAINT cloudauthz_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: custos_authnz_token custos_authnz_token_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.custos_authnz_token
    ADD CONSTRAINT custos_authnz_token_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: data_manager_history_association data_manager_history_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_history_association
    ADD CONSTRAINT data_manager_history_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: data_manager_history_association data_manager_history_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_history_association
    ADD CONSTRAINT data_manager_history_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: data_manager_job_association data_manager_job_association_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.data_manager_job_association
    ADD CONSTRAINT data_manager_job_association_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: dataset_collection_element dataset_collection_element_child_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element
    ADD CONSTRAINT dataset_collection_element_child_collection_id_fkey FOREIGN KEY (child_collection_id) REFERENCES public.dataset_collection(id);


--
-- Name: dataset_collection_element dataset_collection_element_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element
    ADD CONSTRAINT dataset_collection_element_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.dataset_collection(id);


--
-- Name: dataset_collection_element dataset_collection_element_hda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element
    ADD CONSTRAINT dataset_collection_element_hda_id_fkey FOREIGN KEY (hda_id) REFERENCES public.history_dataset_association(id);


--
-- Name: dataset_collection_element dataset_collection_element_ldda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_collection_element
    ADD CONSTRAINT dataset_collection_element_ldda_id_fkey FOREIGN KEY (ldda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: dataset_hash dataset_hash_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_hash
    ADD CONSTRAINT dataset_hash_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: dataset_permissions dataset_permissions_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_permissions
    ADD CONSTRAINT dataset_permissions_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: dataset_permissions dataset_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_permissions
    ADD CONSTRAINT dataset_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: dataset_source dataset_source_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source
    ADD CONSTRAINT dataset_source_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: dataset_source_hash dataset_source_hash_dataset_source_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_source_hash
    ADD CONSTRAINT dataset_source_hash_dataset_source_id_fkey FOREIGN KEY (dataset_source_id) REFERENCES public.dataset_source(id);


--
-- Name: dataset_tag_association dataset_tag_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_tag_association
    ADD CONSTRAINT dataset_tag_association_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: dataset_tag_association dataset_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.dataset_tag_association
    ADD CONSTRAINT dataset_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: default_history_permissions default_history_permissions_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_history_permissions
    ADD CONSTRAINT default_history_permissions_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: default_history_permissions default_history_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_history_permissions
    ADD CONSTRAINT default_history_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: default_quota_association default_quota_association_quota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_quota_association
    ADD CONSTRAINT default_quota_association_quota_id_fkey FOREIGN KEY (quota_id) REFERENCES public.quota(id);


--
-- Name: default_user_permissions default_user_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_user_permissions
    ADD CONSTRAINT default_user_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: default_user_permissions default_user_permissions_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.default_user_permissions
    ADD CONSTRAINT default_user_permissions_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: event event_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: event event_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.galaxy_session(id);


--
-- Name: event event_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: extended_metadata_index extended_metadata_index_extended_metadata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.extended_metadata_index
    ADD CONSTRAINT extended_metadata_index_extended_metadata_id_fkey FOREIGN KEY (extended_metadata_id) REFERENCES public.extended_metadata(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: workflow_invocation_to_subworkflow_invocation_association fk_wfi_swi_swi; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_to_subworkflow_invocation_association
    ADD CONSTRAINT fk_wfi_swi_swi FOREIGN KEY (subworkflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_invocation_to_subworkflow_invocation_association fk_wfi_swi_wfi; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_to_subworkflow_invocation_association
    ADD CONSTRAINT fk_wfi_swi_wfi FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_invocation_to_subworkflow_invocation_association fk_wfi_swi_ws; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_to_subworkflow_invocation_association
    ADD CONSTRAINT fk_wfi_swi_ws FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_request_input_step_parameter fk_wfreq_isp_wfi; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_step_parameter
    ADD CONSTRAINT fk_wfreq_isp_wfi FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_request_input_step_parameter fk_wfreq_isp_ws; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_step_parameter
    ADD CONSTRAINT fk_wfreq_isp_ws FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: form_definition_current form_definition_current_latest_form_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition_current
    ADD CONSTRAINT form_definition_current_latest_form_id_fk FOREIGN KEY (latest_form_id) REFERENCES public.form_definition(id);


--
-- Name: form_definition form_definition_form_definition_current_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_definition
    ADD CONSTRAINT form_definition_form_definition_current_id_fkey FOREIGN KEY (form_definition_current_id) REFERENCES public.form_definition_current(id);


--
-- Name: form_values form_values_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.form_values
    ADD CONSTRAINT form_values_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: galaxy_session galaxy_session_current_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session
    ADD CONSTRAINT galaxy_session_current_history_id_fkey FOREIGN KEY (current_history_id) REFERENCES public.history(id);


--
-- Name: galaxy_session_to_history galaxy_session_to_history_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session_to_history
    ADD CONSTRAINT galaxy_session_to_history_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: galaxy_session_to_history galaxy_session_to_history_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session_to_history
    ADD CONSTRAINT galaxy_session_to_history_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.galaxy_session(id);


--
-- Name: galaxy_session galaxy_session_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_session
    ADD CONSTRAINT galaxy_session_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: galaxy_user_openid galaxy_user_openid_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user_openid
    ADD CONSTRAINT galaxy_user_openid_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.galaxy_session(id);


--
-- Name: galaxy_user_openid galaxy_user_openid_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user_openid
    ADD CONSTRAINT galaxy_user_openid_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: genome_index_tool_data genome_index_tool_data_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: genome_index_tool_data genome_index_tool_data_deferred_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_deferred_job_id_fkey FOREIGN KEY (deferred_job_id) REFERENCES public.deferred_job(id);


--
-- Name: genome_index_tool_data genome_index_tool_data_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: genome_index_tool_data genome_index_tool_data_transfer_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_transfer_job_id_fkey FOREIGN KEY (transfer_job_id) REFERENCES public.transfer_job(id);


--
-- Name: genome_index_tool_data genome_index_tool_data_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.genome_index_tool_data
    ADD CONSTRAINT genome_index_tool_data_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: group_quota_association group_quota_association_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_quota_association
    ADD CONSTRAINT group_quota_association_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.galaxy_group(id);


--
-- Name: group_quota_association group_quota_association_quota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_quota_association
    ADD CONSTRAINT group_quota_association_quota_id_fkey FOREIGN KEY (quota_id) REFERENCES public.quota(id);


--
-- Name: group_role_association group_role_association_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_role_association
    ADD CONSTRAINT group_role_association_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.galaxy_group(id);


--
-- Name: group_role_association group_role_association_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.group_role_association
    ADD CONSTRAINT group_role_association_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: history_annotation_association history_annotation_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_annotation_association
    ADD CONSTRAINT history_annotation_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_annotation_association history_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_annotation_association
    ADD CONSTRAINT history_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_association_subset history_dataset_association__history_dataset_association__fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_subset
    ADD CONSTRAINT history_dataset_association__history_dataset_association__fkey1 FOREIGN KEY (history_dataset_association_subset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_annotation_association history_dataset_association_a_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_annotation_association
    ADD CONSTRAINT history_dataset_association_a_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_annotation_association history_dataset_association_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_annotation_association
    ADD CONSTRAINT history_dataset_association_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_association history_dataset_association_copied_from_history_dataset_as_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_copied_from_history_dataset_as_fkey FOREIGN KEY (copied_from_history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association history_dataset_association_copied_from_library_dataset_da_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_copied_from_library_dataset_da_fkey FOREIGN KEY (copied_from_library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: history_dataset_association_display_at_authorization history_dataset_association_d_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_display_at_authorization
    ADD CONSTRAINT history_dataset_association_d_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association history_dataset_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: library_dataset_dataset_association history_dataset_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT history_dataset_association_dataset_id_fkey FOREIGN KEY (copied_from_history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_display_at_authorization history_dataset_association_display_at_authorizati_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_display_at_authorization
    ADD CONSTRAINT history_dataset_association_display_at_authorizati_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_association history_dataset_association_extended_metadata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_extended_metadata_id_fkey FOREIGN KEY (extended_metadata_id) REFERENCES public.extended_metadata(id);


--
-- Name: history_dataset_association_history history_dataset_association_h_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_history
    ADD CONSTRAINT history_dataset_association_h_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association history_dataset_association_hidden_beneath_collection_inst_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_hidden_beneath_collection_inst_fkey FOREIGN KEY (hidden_beneath_collection_instance_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: history_dataset_association_history history_dataset_association_history_extended_metadata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_history
    ADD CONSTRAINT history_dataset_association_history_extended_metadata_id_fkey FOREIGN KEY (extended_metadata_id) REFERENCES public.extended_metadata(id);


--
-- Name: history_dataset_association history_dataset_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_dataset_association history_dataset_association_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association
    ADD CONSTRAINT history_dataset_association_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_rating_association history_dataset_association_r_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_rating_association
    ADD CONSTRAINT history_dataset_association_r_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_rating_association history_dataset_association_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_rating_association
    ADD CONSTRAINT history_dataset_association_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_association_subset history_dataset_association_s_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_subset
    ADD CONSTRAINT history_dataset_association_s_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_tag_association history_dataset_association_t_history_dataset_association__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_tag_association
    ADD CONSTRAINT history_dataset_association_t_history_dataset_association__fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: history_dataset_association_tag_association history_dataset_association_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_tag_association
    ADD CONSTRAINT history_dataset_association_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: history_dataset_association_tag_association history_dataset_association_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_association_tag_association
    ADD CONSTRAINT history_dataset_association_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_collection_annotation_association history_dataset_collection_an_history_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_annotation_association
    ADD CONSTRAINT history_dataset_collection_an_history_dataset_collection_i_fkey FOREIGN KEY (history_dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: history_dataset_collection_annotation_association history_dataset_collection_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_annotation_association
    ADD CONSTRAINT history_dataset_collection_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_collection_association history_dataset_collection_as_copied_from_history_dataset__fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_as_copied_from_history_dataset__fkey FOREIGN KEY (copied_from_history_dataset_collection_association_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: history_dataset_collection_association history_dataset_collection_ass_implicit_collection_jobs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_ass_implicit_collection_jobs_id_fkey FOREIGN KEY (implicit_collection_jobs_id) REFERENCES public.implicit_collection_jobs(id);


--
-- Name: history_dataset_collection_association history_dataset_collection_association_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_association_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.dataset_collection(id);


--
-- Name: history_dataset_collection_association history_dataset_collection_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_dataset_collection_association history_dataset_collection_association_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_association
    ADD CONSTRAINT history_dataset_collection_association_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: history_dataset_collection_rating_association history_dataset_collection_ra_history_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_rating_association
    ADD CONSTRAINT history_dataset_collection_ra_history_dataset_collection_i_fkey FOREIGN KEY (history_dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: history_dataset_collection_rating_association history_dataset_collection_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_rating_association
    ADD CONSTRAINT history_dataset_collection_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_dataset_collection_tag_association history_dataset_collection_ta_history_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_tag_association
    ADD CONSTRAINT history_dataset_collection_ta_history_dataset_collection_i_fkey FOREIGN KEY (history_dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: history_dataset_collection_tag_association history_dataset_collection_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_tag_association
    ADD CONSTRAINT history_dataset_collection_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: history_dataset_collection_tag_association history_dataset_collection_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_dataset_collection_tag_association
    ADD CONSTRAINT history_dataset_collection_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_rating_association history_rating_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_rating_association
    ADD CONSTRAINT history_rating_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_rating_association history_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_rating_association
    ADD CONSTRAINT history_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_tag_association history_tag_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_tag_association
    ADD CONSTRAINT history_tag_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_tag_association history_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_tag_association
    ADD CONSTRAINT history_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: history_tag_association history_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_tag_association
    ADD CONSTRAINT history_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history history_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history
    ADD CONSTRAINT history_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: history_user_share_association history_user_share_association_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_user_share_association
    ADD CONSTRAINT history_user_share_association_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: history_user_share_association history_user_share_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.history_user_share_association
    ADD CONSTRAINT history_user_share_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: implicit_collection_jobs_job_association implicit_collection_jobs_job_a_implicit_collection_jobs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs_job_association
    ADD CONSTRAINT implicit_collection_jobs_job_a_implicit_collection_jobs_id_fkey FOREIGN KEY (implicit_collection_jobs_id) REFERENCES public.implicit_collection_jobs(id);


--
-- Name: implicit_collection_jobs_job_association implicit_collection_jobs_job_association_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicit_collection_jobs_job_association
    ADD CONSTRAINT implicit_collection_jobs_job_association_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: implicitly_converted_dataset_association implicitly_converted_dataset_association_hda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association
    ADD CONSTRAINT implicitly_converted_dataset_association_hda_id_fkey FOREIGN KEY (hda_id) REFERENCES public.history_dataset_association(id);


--
-- Name: implicitly_converted_dataset_association implicitly_converted_dataset_association_hda_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association
    ADD CONSTRAINT implicitly_converted_dataset_association_hda_parent_id_fkey FOREIGN KEY (hda_parent_id) REFERENCES public.history_dataset_association(id);


--
-- Name: implicitly_converted_dataset_association implicitly_converted_dataset_association_ldda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association
    ADD CONSTRAINT implicitly_converted_dataset_association_ldda_id_fkey FOREIGN KEY (ldda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: implicitly_converted_dataset_association implicitly_converted_dataset_association_ldda_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_converted_dataset_association
    ADD CONSTRAINT implicitly_converted_dataset_association_ldda_parent_id_fkey FOREIGN KEY (ldda_parent_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: implicitly_created_dataset_collection_inputs implicitly_created_dataset_col_input_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_created_dataset_collection_inputs
    ADD CONSTRAINT implicitly_created_dataset_col_input_dataset_collection_id_fkey FOREIGN KEY (input_dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: implicitly_created_dataset_collection_inputs implicitly_created_dataset_collectio_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.implicitly_created_dataset_collection_inputs
    ADD CONSTRAINT implicitly_created_dataset_collectio_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: job job_dynamic_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_dynamic_tool_id_fkey FOREIGN KEY (dynamic_tool_id) REFERENCES public.dynamic_tool(id);


--
-- Name: job_export_history_archive job_export_history_archive_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_export_history_archive
    ADD CONSTRAINT job_export_history_archive_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: job_export_history_archive job_export_history_archive_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_export_history_archive
    ADD CONSTRAINT job_export_history_archive_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: job_export_history_archive job_export_history_archive_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_export_history_archive
    ADD CONSTRAINT job_export_history_archive_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_external_output_metadata job_external_output_metadata_history_dataset_association_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_external_output_metadata
    ADD CONSTRAINT job_external_output_metadata_history_dataset_association_i_fkey FOREIGN KEY (history_dataset_association_id) REFERENCES public.history_dataset_association(id);


--
-- Name: job_external_output_metadata job_external_output_metadata_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_external_output_metadata
    ADD CONSTRAINT job_external_output_metadata_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_external_output_metadata job_external_output_metadata_library_dataset_dataset_assoc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_external_output_metadata
    ADD CONSTRAINT job_external_output_metadata_library_dataset_dataset_assoc_fkey FOREIGN KEY (library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: job job_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: job_import_history_archive job_import_history_archive_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_import_history_archive
    ADD CONSTRAINT job_import_history_archive_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: job_import_history_archive job_import_history_archive_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_import_history_archive
    ADD CONSTRAINT job_import_history_archive_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job job_library_folder_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_library_folder_id_fk FOREIGN KEY (library_folder_id) REFERENCES public.library_folder(id);


--
-- Name: job_metric_numeric job_metric_numeric_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_numeric
    ADD CONSTRAINT job_metric_numeric_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_metric_text job_metric_text_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_metric_text
    ADD CONSTRAINT job_metric_text_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_parameter job_parameter_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_parameter
    ADD CONSTRAINT job_parameter_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job job_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.galaxy_session(id);


--
-- Name: job_state_history job_state_history_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_state_history
    ADD CONSTRAINT job_state_history_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_implicit_output_dataset_collection job_to_implicit_output_dataset_colle_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_implicit_output_dataset_collection
    ADD CONSTRAINT job_to_implicit_output_dataset_colle_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.dataset_collection(id);


--
-- Name: job_to_implicit_output_dataset_collection job_to_implicit_output_dataset_collection_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_implicit_output_dataset_collection
    ADD CONSTRAINT job_to_implicit_output_dataset_collection_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_input_dataset_collection job_to_input_dataset_collection_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset_collection
    ADD CONSTRAINT job_to_input_dataset_collection_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: job_to_input_dataset_collection job_to_input_dataset_collection_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset_collection
    ADD CONSTRAINT job_to_input_dataset_collection_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_input_dataset job_to_input_dataset_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset
    ADD CONSTRAINT job_to_input_dataset_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: job_to_input_dataset job_to_input_dataset_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_dataset
    ADD CONSTRAINT job_to_input_dataset_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_input_library_dataset job_to_input_library_dataset_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_library_dataset
    ADD CONSTRAINT job_to_input_library_dataset_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_input_library_dataset job_to_input_library_dataset_ldda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_input_library_dataset
    ADD CONSTRAINT job_to_input_library_dataset_ldda_id_fkey FOREIGN KEY (ldda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: job_to_output_dataset_collection job_to_output_dataset_collection_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset_collection
    ADD CONSTRAINT job_to_output_dataset_collection_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: job_to_output_dataset_collection job_to_output_dataset_collection_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset_collection
    ADD CONSTRAINT job_to_output_dataset_collection_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_output_dataset job_to_output_dataset_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset
    ADD CONSTRAINT job_to_output_dataset_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: job_to_output_dataset job_to_output_dataset_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_dataset
    ADD CONSTRAINT job_to_output_dataset_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_output_library_dataset job_to_output_library_dataset_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_library_dataset
    ADD CONSTRAINT job_to_output_library_dataset_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: job_to_output_library_dataset job_to_output_library_dataset_ldda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job_to_output_library_dataset
    ADD CONSTRAINT job_to_output_library_dataset_ldda_id_fkey FOREIGN KEY (ldda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: job job_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_collection_annotation_association library_dataset_collection_an_library_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_annotation_association
    ADD CONSTRAINT library_dataset_collection_an_library_dataset_collection_i_fkey FOREIGN KEY (library_dataset_collection_id) REFERENCES public.library_dataset_collection_association(id);


--
-- Name: library_dataset_collection_annotation_association library_dataset_collection_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_annotation_association
    ADD CONSTRAINT library_dataset_collection_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_collection_association library_dataset_collection_association_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_association
    ADD CONSTRAINT library_dataset_collection_association_collection_id_fkey FOREIGN KEY (collection_id) REFERENCES public.dataset_collection(id);


--
-- Name: library_dataset_collection_association library_dataset_collection_association_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_association
    ADD CONSTRAINT library_dataset_collection_association_folder_id_fkey FOREIGN KEY (folder_id) REFERENCES public.library_folder(id);


--
-- Name: library_dataset_collection_rating_association library_dataset_collection_ra_library_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_rating_association
    ADD CONSTRAINT library_dataset_collection_ra_library_dataset_collection_i_fkey FOREIGN KEY (library_dataset_collection_id) REFERENCES public.library_dataset_collection_association(id);


--
-- Name: library_dataset_collection_rating_association library_dataset_collection_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_rating_association
    ADD CONSTRAINT library_dataset_collection_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_collection_tag_association library_dataset_collection_ta_library_dataset_collection_i_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_tag_association
    ADD CONSTRAINT library_dataset_collection_ta_library_dataset_collection_i_fkey FOREIGN KEY (library_dataset_collection_id) REFERENCES public.library_dataset_collection_association(id);


--
-- Name: library_dataset_collection_tag_association library_dataset_collection_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_tag_association
    ADD CONSTRAINT library_dataset_collection_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: library_dataset_collection_tag_association library_dataset_collection_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_collection_tag_association
    ADD CONSTRAINT library_dataset_collection_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_dataset_association_tag_association library_dataset_dataset_asso_library_dataset_dataset_asso_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_tag_association
    ADD CONSTRAINT library_dataset_dataset_asso_library_dataset_dataset_asso_fkey1 FOREIGN KEY (library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_association_permissions library_dataset_dataset_assoc_library_dataset_dataset_asso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_permissions
    ADD CONSTRAINT library_dataset_dataset_assoc_library_dataset_dataset_asso_fkey FOREIGN KEY (library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.dataset(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_extended_metadata_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_extended_metadata_id_fkey FOREIGN KEY (extended_metadata_id) REFERENCES public.extended_metadata(id);


--
-- Name: library_dataset library_dataset_dataset_association_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset
    ADD CONSTRAINT library_dataset_dataset_association_id_fk FOREIGN KEY (library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_id_fkey FOREIGN KEY (copied_from_library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_library_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_library_dataset_id_fkey FOREIGN KEY (library_dataset_id) REFERENCES public.library_dataset(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_association_permissions library_dataset_dataset_association_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_permissions
    ADD CONSTRAINT library_dataset_dataset_association_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: library_dataset_dataset_association_tag_association library_dataset_dataset_association_tag_associatio_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_tag_association
    ADD CONSTRAINT library_dataset_dataset_association_tag_associatio_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_dataset_association_tag_association library_dataset_dataset_association_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association_tag_association
    ADD CONSTRAINT library_dataset_dataset_association_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: library_dataset_dataset_association library_dataset_dataset_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_association
    ADD CONSTRAINT library_dataset_dataset_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: library_dataset_dataset_info_association library_dataset_dataset_info__library_dataset_dataset_asso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_info_association
    ADD CONSTRAINT library_dataset_dataset_info__library_dataset_dataset_asso_fkey FOREIGN KEY (library_dataset_dataset_association_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: library_dataset_dataset_info_association library_dataset_dataset_info_associatio_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_info_association
    ADD CONSTRAINT library_dataset_dataset_info_associatio_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: library_dataset_dataset_info_association library_dataset_dataset_info_association_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_dataset_info_association
    ADD CONSTRAINT library_dataset_dataset_info_association_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: library_dataset library_dataset_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset
    ADD CONSTRAINT library_dataset_folder_id_fkey FOREIGN KEY (folder_id) REFERENCES public.library_folder(id);


--
-- Name: library_dataset_permissions library_dataset_permissions_library_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_permissions
    ADD CONSTRAINT library_dataset_permissions_library_dataset_id_fkey FOREIGN KEY (library_dataset_id) REFERENCES public.library_dataset(id);


--
-- Name: library_dataset_permissions library_dataset_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_dataset_permissions
    ADD CONSTRAINT library_dataset_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: library_folder_info_association library_folder_info_association_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_info_association
    ADD CONSTRAINT library_folder_info_association_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: library_folder_info_association library_folder_info_association_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_info_association
    ADD CONSTRAINT library_folder_info_association_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: library_folder_info_association library_folder_info_association_library_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_info_association
    ADD CONSTRAINT library_folder_info_association_library_folder_id_fkey FOREIGN KEY (library_folder_id) REFERENCES public.library_folder(id);


--
-- Name: library_folder library_folder_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder
    ADD CONSTRAINT library_folder_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.library_folder(id);


--
-- Name: library_folder_permissions library_folder_permissions_library_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_permissions
    ADD CONSTRAINT library_folder_permissions_library_folder_id_fkey FOREIGN KEY (library_folder_id) REFERENCES public.library_folder(id);


--
-- Name: library_folder_permissions library_folder_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_folder_permissions
    ADD CONSTRAINT library_folder_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: library_info_association library_info_association_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_info_association
    ADD CONSTRAINT library_info_association_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: library_info_association library_info_association_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_info_association
    ADD CONSTRAINT library_info_association_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: library_info_association library_info_association_library_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_info_association
    ADD CONSTRAINT library_info_association_library_id_fkey FOREIGN KEY (library_id) REFERENCES public.library(id);


--
-- Name: library_permissions library_permissions_library_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_permissions
    ADD CONSTRAINT library_permissions_library_id_fkey FOREIGN KEY (library_id) REFERENCES public.library(id);


--
-- Name: library_permissions library_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library_permissions
    ADD CONSTRAINT library_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: library library_root_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.library
    ADD CONSTRAINT library_root_folder_id_fkey FOREIGN KEY (root_folder_id) REFERENCES public.library_folder(id);


--
-- Name: metadata_file metadata_file_hda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.metadata_file
    ADD CONSTRAINT metadata_file_hda_id_fkey FOREIGN KEY (hda_id) REFERENCES public.history_dataset_association(id);


--
-- Name: metadata_file metadata_file_lda_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.metadata_file
    ADD CONSTRAINT metadata_file_lda_id_fkey FOREIGN KEY (lda_id) REFERENCES public.library_dataset_dataset_association(id);


--
-- Name: oidc_user_authnz_tokens oidc_user_authnz_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.oidc_user_authnz_tokens
    ADD CONSTRAINT oidc_user_authnz_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: page_annotation_association page_annotation_association_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_annotation_association
    ADD CONSTRAINT page_annotation_association_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_annotation_association page_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_annotation_association
    ADD CONSTRAINT page_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: page_rating_association page_rating_association_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_rating_association
    ADD CONSTRAINT page_rating_association_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_rating_association page_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_rating_association
    ADD CONSTRAINT page_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: page_revision page_revision_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_revision
    ADD CONSTRAINT page_revision_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_tag_association page_tag_association_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_tag_association
    ADD CONSTRAINT page_tag_association_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_tag_association page_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_tag_association
    ADD CONSTRAINT page_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: page_tag_association page_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_tag_association
    ADD CONSTRAINT page_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: page page_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: page_user_share_association page_user_share_association_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_user_share_association
    ADD CONSTRAINT page_user_share_association_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.page(id);


--
-- Name: page_user_share_association page_user_share_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.page_user_share_association
    ADD CONSTRAINT page_user_share_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: password_reset_token password_reset_token_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.password_reset_token
    ADD CONSTRAINT password_reset_token_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: post_job_action_association post_job_action_association_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action_association
    ADD CONSTRAINT post_job_action_association_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: post_job_action_association post_job_action_association_post_job_action_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action_association
    ADD CONSTRAINT post_job_action_association_post_job_action_id_fkey FOREIGN KEY (post_job_action_id) REFERENCES public.post_job_action(id);


--
-- Name: post_job_action post_job_action_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.post_job_action
    ADD CONSTRAINT post_job_action_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: repository_dependency repository_dependency_tool_shed_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_dependency
    ADD CONSTRAINT repository_dependency_tool_shed_repository_id_fkey FOREIGN KEY (tool_shed_repository_id) REFERENCES public.tool_shed_repository(id);


--
-- Name: repository_repository_dependency_association repository_repository_dependency__repository_dependency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_repository_dependency_association
    ADD CONSTRAINT repository_repository_dependency__repository_dependency_id_fkey FOREIGN KEY (repository_dependency_id) REFERENCES public.repository_dependency(id);


--
-- Name: repository_repository_dependency_association repository_repository_dependency_a_tool_shed_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.repository_repository_dependency_association
    ADD CONSTRAINT repository_repository_dependency_a_tool_shed_repository_id_fkey FOREIGN KEY (tool_shed_repository_id) REFERENCES public.tool_shed_repository(id);


--
-- Name: request_event request_event_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_event
    ADD CONSTRAINT request_event_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(id);


--
-- Name: request request_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: request request_request_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_request_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: request_type_external_service_association request_type_external_service_associat_external_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_external_service_association
    ADD CONSTRAINT request_type_external_service_associat_external_service_id_fkey FOREIGN KEY (external_service_id) REFERENCES public.external_service(id);


--
-- Name: request_type_external_service_association request_type_external_service_association_request_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_external_service_association
    ADD CONSTRAINT request_type_external_service_association_request_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: request_type_permissions request_type_permissions_request_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_permissions
    ADD CONSTRAINT request_type_permissions_request_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: request_type_permissions request_type_permissions_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_permissions
    ADD CONSTRAINT request_type_permissions_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: request_type request_type_request_form_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type
    ADD CONSTRAINT request_type_request_form_id_fkey FOREIGN KEY (request_form_id) REFERENCES public.form_definition(id);


--
-- Name: request_type_run_association request_type_run_association_request_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_run_association
    ADD CONSTRAINT request_type_run_association_request_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: request_type_run_association request_type_run_association_run_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type_run_association
    ADD CONSTRAINT request_type_run_association_run_id_fkey FOREIGN KEY (run_id) REFERENCES public.run(id);


--
-- Name: request_type request_type_sample_form_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request_type
    ADD CONSTRAINT request_type_sample_form_id_fkey FOREIGN KEY (sample_form_id) REFERENCES public.form_definition(id);


--
-- Name: request request_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.request
    ADD CONSTRAINT request_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: run run_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.run
    ADD CONSTRAINT run_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: run run_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.run
    ADD CONSTRAINT run_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: sample_dataset sample_dataset_external_services_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_dataset
    ADD CONSTRAINT sample_dataset_external_services_id_fk FOREIGN KEY (external_service_id) REFERENCES public.external_service(id);


--
-- Name: sample_dataset sample_dataset_sample_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_dataset
    ADD CONSTRAINT sample_dataset_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample(id);


--
-- Name: sample_event sample_event_sample_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_event
    ADD CONSTRAINT sample_event_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample(id);


--
-- Name: sample_event sample_event_sample_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_event
    ADD CONSTRAINT sample_event_sample_state_id_fkey FOREIGN KEY (sample_state_id) REFERENCES public.sample_state(id);


--
-- Name: sample sample_folder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_folder_id_fkey FOREIGN KEY (folder_id) REFERENCES public.library_folder(id);


--
-- Name: sample sample_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: sample sample_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: sample sample_library_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_library_id_fkey FOREIGN KEY (library_id) REFERENCES public.library(id);


--
-- Name: sample sample_request_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample
    ADD CONSTRAINT sample_request_id_fkey FOREIGN KEY (request_id) REFERENCES public.request(id);


--
-- Name: sample_run_association sample_run_association_run_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_run_association
    ADD CONSTRAINT sample_run_association_run_id_fkey FOREIGN KEY (run_id) REFERENCES public.run(id);


--
-- Name: sample_run_association sample_run_association_sample_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_run_association
    ADD CONSTRAINT sample_run_association_sample_id_fkey FOREIGN KEY (sample_id) REFERENCES public.sample(id);


--
-- Name: sample_state sample_state_request_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.sample_state
    ADD CONSTRAINT sample_state_request_type_id_fkey FOREIGN KEY (request_type_id) REFERENCES public.request_type(id);


--
-- Name: external_service sequencer_form_definition_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.external_service
    ADD CONSTRAINT sequencer_form_definition_id_fkey FOREIGN KEY (form_definition_id) REFERENCES public.form_definition(id);


--
-- Name: external_service sequencer_form_values_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.external_service
    ADD CONSTRAINT sequencer_form_values_id_fkey FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: stored_workflow_annotation_association stored_workflow_annotation_association_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_annotation_association
    ADD CONSTRAINT stored_workflow_annotation_association_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: stored_workflow_annotation_association stored_workflow_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_annotation_association
    ADD CONSTRAINT stored_workflow_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: stored_workflow stored_workflow_latest_workflow_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow
    ADD CONSTRAINT stored_workflow_latest_workflow_id_fk FOREIGN KEY (latest_workflow_id) REFERENCES public.workflow(id);


--
-- Name: stored_workflow_menu_entry stored_workflow_menu_entry_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_menu_entry
    ADD CONSTRAINT stored_workflow_menu_entry_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: stored_workflow_menu_entry stored_workflow_menu_entry_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_menu_entry
    ADD CONSTRAINT stored_workflow_menu_entry_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: stored_workflow_rating_association stored_workflow_rating_association_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_rating_association
    ADD CONSTRAINT stored_workflow_rating_association_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: stored_workflow_rating_association stored_workflow_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_rating_association
    ADD CONSTRAINT stored_workflow_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: stored_workflow_tag_association stored_workflow_tag_association_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_tag_association
    ADD CONSTRAINT stored_workflow_tag_association_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: stored_workflow_tag_association stored_workflow_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_tag_association
    ADD CONSTRAINT stored_workflow_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: stored_workflow_tag_association stored_workflow_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_tag_association
    ADD CONSTRAINT stored_workflow_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: stored_workflow stored_workflow_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow
    ADD CONSTRAINT stored_workflow_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: stored_workflow_user_share_connection stored_workflow_user_share_connection_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_user_share_connection
    ADD CONSTRAINT stored_workflow_user_share_connection_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: stored_workflow_user_share_connection stored_workflow_user_share_connection_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.stored_workflow_user_share_connection
    ADD CONSTRAINT stored_workflow_user_share_connection_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: tag tag_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.tag(id);


--
-- Name: task task_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: task_metric_numeric task_metric_numeric_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_numeric
    ADD CONSTRAINT task_metric_numeric_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.task(id);


--
-- Name: task_metric_text task_metric_text_task_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.task_metric_text
    ADD CONSTRAINT task_metric_text_task_id_fkey FOREIGN KEY (task_id) REFERENCES public.task(id);


--
-- Name: tool_dependency tool_dependency_tool_shed_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_dependency
    ADD CONSTRAINT tool_dependency_tool_shed_repository_id_fkey FOREIGN KEY (tool_shed_repository_id) REFERENCES public.tool_shed_repository(id);


--
-- Name: tool_tag_association tool_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_tag_association
    ADD CONSTRAINT tool_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: tool_tag_association tool_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_tag_association
    ADD CONSTRAINT tool_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: tool_version_association tool_version_association_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version_association
    ADD CONSTRAINT tool_version_association_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.tool_version(id);


--
-- Name: tool_version_association tool_version_association_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version_association
    ADD CONSTRAINT tool_version_association_tool_id_fkey FOREIGN KEY (tool_id) REFERENCES public.tool_version(id);


--
-- Name: tool_version tool_version_tool_shed_repository_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.tool_version
    ADD CONSTRAINT tool_version_tool_shed_repository_id_fkey FOREIGN KEY (tool_shed_repository_id) REFERENCES public.tool_shed_repository(id);


--
-- Name: user_action user_action_session_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_action
    ADD CONSTRAINT user_action_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.galaxy_session(id);


--
-- Name: user_action user_action_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_action
    ADD CONSTRAINT user_action_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: user_address user_address_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_address
    ADD CONSTRAINT user_address_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: galaxy_user user_form_values_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.galaxy_user
    ADD CONSTRAINT user_form_values_id_fk FOREIGN KEY (form_values_id) REFERENCES public.form_values(id);


--
-- Name: user_group_association user_group_association_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_group_association
    ADD CONSTRAINT user_group_association_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.galaxy_group(id);


--
-- Name: user_group_association user_group_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_group_association
    ADD CONSTRAINT user_group_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: user_preference user_preference_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_preference
    ADD CONSTRAINT user_preference_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: user_quota_association user_quota_association_quota_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_quota_association
    ADD CONSTRAINT user_quota_association_quota_id_fkey FOREIGN KEY (quota_id) REFERENCES public.quota(id);


--
-- Name: user_quota_association user_quota_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_quota_association
    ADD CONSTRAINT user_quota_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: user_role_association user_role_association_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_role_association
    ADD CONSTRAINT user_role_association_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(id);


--
-- Name: user_role_association user_role_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.user_role_association
    ADD CONSTRAINT user_role_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: validation_error validation_error_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.validation_error
    ADD CONSTRAINT validation_error_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: visualization_annotation_association visualization_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_annotation_association
    ADD CONSTRAINT visualization_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: visualization_annotation_association visualization_annotation_association_visualization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_annotation_association
    ADD CONSTRAINT visualization_annotation_association_visualization_id_fkey FOREIGN KEY (visualization_id) REFERENCES public.visualization(id);


--
-- Name: visualization_rating_association visualization_rating_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_rating_association
    ADD CONSTRAINT visualization_rating_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: visualization_rating_association visualization_rating_association_visualization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_rating_association
    ADD CONSTRAINT visualization_rating_association_visualization_id_fkey FOREIGN KEY (visualization_id) REFERENCES public.visualization(id);


--
-- Name: visualization_revision visualization_revision_visualization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_revision
    ADD CONSTRAINT visualization_revision_visualization_id_fkey FOREIGN KEY (visualization_id) REFERENCES public.visualization(id);


--
-- Name: visualization_tag_association visualization_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_tag_association
    ADD CONSTRAINT visualization_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: visualization_tag_association visualization_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_tag_association
    ADD CONSTRAINT visualization_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: visualization_tag_association visualization_tag_association_visualization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_tag_association
    ADD CONSTRAINT visualization_tag_association_visualization_id_fkey FOREIGN KEY (visualization_id) REFERENCES public.visualization(id);


--
-- Name: visualization visualization_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization
    ADD CONSTRAINT visualization_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: visualization_user_share_association visualization_user_share_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_user_share_association
    ADD CONSTRAINT visualization_user_share_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: visualization_user_share_association visualization_user_share_association_visualization_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.visualization_user_share_association
    ADD CONSTRAINT visualization_user_share_association_visualization_id_fkey FOREIGN KEY (visualization_id) REFERENCES public.visualization(id);


--
-- Name: workflow_invocation workflow_invocation_history_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation
    ADD CONSTRAINT workflow_invocation_history_id_fkey FOREIGN KEY (history_id) REFERENCES public.history(id);


--
-- Name: workflow_invocation_output_dataset_association workflow_invocation_output_dataset__workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association
    ADD CONSTRAINT workflow_invocation_output_dataset__workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_invocation_output_dataset_association workflow_invocation_output_dataset_asso_workflow_output_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association
    ADD CONSTRAINT workflow_invocation_output_dataset_asso_workflow_output_id_fkey FOREIGN KEY (workflow_output_id) REFERENCES public.workflow_output(id);


--
-- Name: workflow_invocation_output_dataset_association workflow_invocation_output_dataset_associ_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association
    ADD CONSTRAINT workflow_invocation_output_dataset_associ_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_invocation_output_dataset_association workflow_invocation_output_dataset_association_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_association
    ADD CONSTRAINT workflow_invocation_output_dataset_association_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: workflow_invocation_output_dataset_collection_association workflow_invocation_output_dataset_c_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_output_dataset_c_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: workflow_invocation_output_dataset_collection_association workflow_invocation_output_dataset_coll_workflow_output_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_output_dataset_coll_workflow_output_id_fkey FOREIGN KEY (workflow_output_id) REFERENCES public.workflow_output(id);


--
-- Name: workflow_invocation_output_dataset_collection_association workflow_invocation_output_dataset_collec_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_output_dataset_collec_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_invocation_output_dataset_collection_association workflow_invocation_output_dataset_workflow_invocation_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_output_dataset_workflow_invocation_id_fkey1 FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_invocation_step workflow_invocation_step_implicit_collection_jobs_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step
    ADD CONSTRAINT workflow_invocation_step_implicit_collection_jobs_id_fkey FOREIGN KEY (implicit_collection_jobs_id) REFERENCES public.implicit_collection_jobs(id);


--
-- Name: workflow_invocation_step workflow_invocation_step_job_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step
    ADD CONSTRAINT workflow_invocation_step_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(id);


--
-- Name: workflow_invocation_step_output_dataset_collection_association workflow_invocation_step_outp_workflow_invocation_step_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_step_outp_workflow_invocation_step_id_fkey1 FOREIGN KEY (workflow_invocation_step_id) REFERENCES public.workflow_invocation_step(id);


--
-- Name: workflow_invocation_step_output_dataset_association workflow_invocation_step_outpu_workflow_invocation_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_association
    ADD CONSTRAINT workflow_invocation_step_outpu_workflow_invocation_step_id_fkey FOREIGN KEY (workflow_invocation_step_id) REFERENCES public.workflow_invocation_step(id);


--
-- Name: workflow_invocation_step_output_dataset_collection_association workflow_invocation_step_output_data_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_step_output_data_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: workflow_invocation_step_output_dataset_association workflow_invocation_step_output_dataset_associa_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_association
    ADD CONSTRAINT workflow_invocation_step_output_dataset_associa_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: workflow_invocation_step_output_dataset_collection_association workflow_invocation_step_output_dataset_c_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step_output_dataset_collection_association
    ADD CONSTRAINT workflow_invocation_step_output_dataset_c_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_invocation_step workflow_invocation_step_workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step
    ADD CONSTRAINT workflow_invocation_step_workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_invocation_step workflow_invocation_step_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation_step
    ADD CONSTRAINT workflow_invocation_step_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_invocation workflow_invocation_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_invocation
    ADD CONSTRAINT workflow_invocation_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.workflow(id);


--
-- Name: workflow_output workflow_output_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_output
    ADD CONSTRAINT workflow_output_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow workflow_parent_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow
    ADD CONSTRAINT workflow_parent_workflow_id_fkey FOREIGN KEY (parent_workflow_id) REFERENCES public.workflow(id);


--
-- Name: workflow_request_input_parameters workflow_request_input_parameters_workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_input_parameters
    ADD CONSTRAINT workflow_request_input_parameters_workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: workflow_request_step_states workflow_request_step_states_workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_step_states
    ADD CONSTRAINT workflow_request_step_states_workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: workflow_request_step_states workflow_request_step_states_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_step_states
    ADD CONSTRAINT workflow_request_step_states_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_request_to_input_collection_dataset workflow_request_to_input_collectio_workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_collection_dataset
    ADD CONSTRAINT workflow_request_to_input_collectio_workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_request_to_input_collection_dataset workflow_request_to_input_collection_data_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_collection_dataset
    ADD CONSTRAINT workflow_request_to_input_collection_data_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_request_to_input_collection_dataset workflow_request_to_input_collection_dataset_collection_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_collection_dataset
    ADD CONSTRAINT workflow_request_to_input_collection_dataset_collection_id_fkey FOREIGN KEY (dataset_collection_id) REFERENCES public.history_dataset_collection_association(id);


--
-- Name: workflow_request_to_input_dataset workflow_request_to_input_dataset_dataset_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_dataset
    ADD CONSTRAINT workflow_request_to_input_dataset_dataset_id_fkey FOREIGN KEY (dataset_id) REFERENCES public.history_dataset_association(id);


--
-- Name: workflow_request_to_input_dataset workflow_request_to_input_dataset_workflow_invocation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_dataset
    ADD CONSTRAINT workflow_request_to_input_dataset_workflow_invocation_id_fkey FOREIGN KEY (workflow_invocation_id) REFERENCES public.workflow_invocation(id);


--
-- Name: workflow_request_to_input_dataset workflow_request_to_input_dataset_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_request_to_input_dataset
    ADD CONSTRAINT workflow_request_to_input_dataset_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step_annotation_association workflow_step_annotation_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_annotation_association
    ADD CONSTRAINT workflow_step_annotation_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: workflow_step_annotation_association workflow_step_annotation_association_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_annotation_association
    ADD CONSTRAINT workflow_step_annotation_association_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step_connection workflow_step_connection_input_step_input_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_connection
    ADD CONSTRAINT workflow_step_connection_input_step_input_id_fkey FOREIGN KEY (input_step_input_id) REFERENCES public.workflow_step_input(id);


--
-- Name: workflow_step_connection workflow_step_connection_input_subworkflow_step_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_connection
    ADD CONSTRAINT workflow_step_connection_input_subworkflow_step_id_fkey1 FOREIGN KEY (input_subworkflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step_connection workflow_step_connection_output_step_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_connection
    ADD CONSTRAINT workflow_step_connection_output_step_id_fkey1 FOREIGN KEY (output_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step workflow_step_dynamic_tool_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step
    ADD CONSTRAINT workflow_step_dynamic_tool_id_fkey FOREIGN KEY (dynamic_tool_id) REFERENCES public.dynamic_tool(id);


--
-- Name: workflow_step_input workflow_step_input_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_input
    ADD CONSTRAINT workflow_step_input_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step workflow_step_subworkflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step
    ADD CONSTRAINT workflow_step_subworkflow_id_fkey FOREIGN KEY (subworkflow_id) REFERENCES public.workflow(id);


--
-- Name: workflow_step_tag_association workflow_step_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_tag_association
    ADD CONSTRAINT workflow_step_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: workflow_step_tag_association workflow_step_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_tag_association
    ADD CONSTRAINT workflow_step_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: workflow_step_tag_association workflow_step_tag_association_workflow_step_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step_tag_association
    ADD CONSTRAINT workflow_step_tag_association_workflow_step_id_fkey FOREIGN KEY (workflow_step_id) REFERENCES public.workflow_step(id);


--
-- Name: workflow_step workflow_step_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_step
    ADD CONSTRAINT workflow_step_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.workflow(id);


--
-- Name: workflow workflow_stored_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow
    ADD CONSTRAINT workflow_stored_workflow_id_fkey FOREIGN KEY (stored_workflow_id) REFERENCES public.stored_workflow(id);


--
-- Name: workflow_tag_association workflow_tag_association_tag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_tag_association
    ADD CONSTRAINT workflow_tag_association_tag_id_fkey FOREIGN KEY (tag_id) REFERENCES public.tag(id);


--
-- Name: workflow_tag_association workflow_tag_association_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_tag_association
    ADD CONSTRAINT workflow_tag_association_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.galaxy_user(id);


--
-- Name: workflow_tag_association workflow_tag_association_workflow_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: galaxydbuser
--

ALTER TABLE ONLY public.workflow_tag_association
    ADD CONSTRAINT workflow_tag_association_workflow_id_fkey FOREIGN KEY (workflow_id) REFERENCES public.workflow(id);


--
-- PostgreSQL database dump complete
--

