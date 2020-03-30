--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: co_emmisions_per_capita; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.co_emmisions_per_capita (
    name text,
    country_code text,
    year integer,
    co_emission_tons_per_capita double precision
);


ALTER TABLE public.co_emmisions_per_capita OWNER TO postgres;

--
-- Name: country_codes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_codes (
    name text,
    country_code text
);


ALTER TABLE public.country_codes OWNER TO postgres;

--
-- Name: covid19_cases_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.covid19_cases_by_country (
    date date,
    country text,
    new_cases integer,
    new_deaths integer,
    total_cases integer,
    total_deaths integer
);


ALTER TABLE public.covid19_cases_by_country OWNER TO postgres;

--
-- Name: infant_mortality_rate_county; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.infant_mortality_rate_county (
    name text,
    country_code text,
    year integer,
    infant_mortaility_rate_percent double precision
);


ALTER TABLE public.infant_mortality_rate_county OWNER TO postgres;

--
-- Name: obesity_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.obesity_by_country (
    name text,
    country_code text,
    year integer,
    percent_obesity_men double precision,
    percent_obesity_women double precision
);


ALTER TABLE public.obesity_by_country OWNER TO postgres;

--
-- Name: plastic_waste_generation_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plastic_waste_generation_by_country (
    name text,
    country_code text,
    year integer,
    tons bigint
);


ALTER TABLE public.plastic_waste_generation_by_country OWNER TO postgres;

--
-- Name: plastic_waste_improperly_disposed_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.plastic_waste_improperly_disposed_by_country (
    name text,
    country_code text,
    year integer,
    percent_of_plastic double precision
);


ALTER TABLE public.plastic_waste_improperly_disposed_by_country OWNER TO postgres;

--
-- Name: population_size_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.population_size_by_country (
    name text,
    country_code text,
    year integer,
    population double precision
);


ALTER TABLE public.population_size_by_country OWNER TO postgres;

--
-- Name: prison_population_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prison_population_by_country (
    name text,
    country_code text,
    year integer,
    prisoners_per_100k integer
);


ALTER TABLE public.prison_population_by_country OWNER TO postgres;

--
-- Name: share_of_government_expenditure_going_to_interest_payments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.share_of_government_expenditure_going_to_interest_payments (
    name text,
    code text,
    year integer,
    percent double precision
);


ALTER TABLE public.share_of_government_expenditure_going_to_interest_payments OWNER TO postgres;

--
-- Name: sp_500; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sp_500 (
    date date,
    open double precision,
    high double precision,
    low double precision,
    close double precision,
    adj_close double precision,
    volume bigint
);


ALTER TABLE public.sp_500 OWNER TO postgres;

--
-- Name: total_covid19_tests_by_country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.total_covid19_tests_by_country (
    name text,
    country_code text,
    total_covid19_tests integer
);


ALTER TABLE public.total_covid19_tests_by_country OWNER TO postgres;

--
-- Name: us_healthcare_spending_by_payer_and_condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.us_healthcare_spending_by_payer_and_condition (
    year integer,
    age_group integer,
    age_group_name text,
    sex_id integer,
    sex text,
    function text,
    type_of_care text,
    acause text,
    cause_name text,
    cause_id text,
    mean_all double precision,
    lower_all double precision,
    upper_all double precision,
    mean_pub double precision,
    lower_pub double precision,
    upper_pub double precision,
    mean_pri double precision,
    lower_pri double precision,
    upper_pri double precision,
    mean_oop double precision,
    lower_oop double precision,
    upper_oop double precision
);


ALTER TABLE public.us_healthcare_spending_by_payer_and_condition OWNER TO postgres;

--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--


create table public.covid19_by_state (
  date date,
	state text,
	positive int,
 	negative int,
	pending int,
	hospitalized int,
	death int,
	total int,
	hash text,
	date_checked date,
	total_test_results int,
	fips int,
	death_increase int,
	hospitalized_increase int,
	negative_increase int,
	positive_increase int,
	total_test_results_increase int
);

create table public.gross_federal_debt (
  date date,
  gross_debt float
);
