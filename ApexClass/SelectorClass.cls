public class {{ api_name }}Selector extends fflib_SObjectSelector {

	public List<Schema.SObjectField> getSObjectFieldList() {
		return new List<Schema.SObjectField> {
				{{ object_name }}.Id
			};
	}

	public Schema.SObjectType getSObjectType() {
		return {{ object_name }}.sObjectType;
	}

	public static I{{ api_name }}Selector newInstance() {
    	return (I{{ api_name }}Selector) Application.Selector.newInstance({{ object_name }}.SObjectType);
    }

	public List<{{ object_name }}> selectById(Set<ID> idSet) {
		return (List<{{ object_name }}>) selectSObjectsById(idSet);
	}	
}
