DROP TRIGGER IF EXISTS zzz_terminate_trigger_for_{} ON public.{};
CREATE CONSTRAINT TRIGGER zzz_terminate_trigger
    AFTER INSERT OR UPDATE OR DELETE ON
    public.{} DEFERRABLE INITIALLY DEFERRED FOR EACH ROW EXECUTE PROCEDURE public.terminate();