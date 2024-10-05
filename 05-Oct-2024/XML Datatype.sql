XMl Datatype :
	Extension Markup Language
	We can create our custom tag for XML.

	-- XMl format
	Categories
		Category
			Id - 1
			Name - 'Apple'
		Category
			Id - 2
			Name - 'Samsung'
	
	-- XMl format
	<Categories>
		<Category>
			<Id>1</Id>
			<Name>Apple</Name>
		</Category>
		<Category>
			<Id>2</Id>
			<Name>Samsung</Name>
		</Category>
		<Category>
			<Id>3</Id>
			<Name>One Plus</Name>
		</Category>
	</Categories>

	-- How to declare xml type data
	declare @Xml_Categories xml= '
		<Categories>
			<Category>
				<Id>1</Id>
				<Name>Apple</Name>
			</Category>
			<Category>
				<Id>2</Id>
				<Name>Samsung</Name>
			</Category>
			<Category>
				<Id>3</Id>
				<Name>One Plus</Name>
			</Category>
		</Categories>'