public class {{ api_name }} {
	private static I{{ api_name }} service() {
    	return (I{{ api_name }}) Application.Service.newInstance(I{{ api_name }}.class);
	}
}