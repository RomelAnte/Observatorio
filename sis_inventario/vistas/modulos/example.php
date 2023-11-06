<head>
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

		<link rel="stylesheet" href="./minified/themes/default.min.css" id="theme-style" />
		  
		<script src="./minified/sceditor.min.js"></script>
		<script src="./minified/icons/monocons.js"></script>
		<script src="./minified/formats/bbcode.js"></script>

		<style>
			html {
				font-family: Arial, Helvetica, sans-serif;
				font-size: 13px;
			}
			form div {
				padding: .5em;
			}
			code:before {
				position: absolute;
				content: 'Code:';
				top: -1.35em;
				left: 0;
			}
			code {
				margin-top: 1.5em;
				position: relative;
				background: #eee;
				border: 1px solid #aaa;
				white-space: pre;
				padding: .25em;
				min-height: 1.25em;
			}
			code:before, code {
				display: block;
				text-align: left;
			}
		</style>
	</head>
	<body>
		<form action="" method="post">
			<div>
				<textarea id="example" style="height:300px;width:600px;">
					
				</textarea>

			</div>

		</form>


		<script>
			var textarea = document.getElementById('example');
			sceditor.create(textarea, {
				format: 'bbcode',
				icons: 'monocons',
				style: '../minified/themes/content/default.min.css'
			});


			var themeInput = document.getElementById('theme');
			themeInput.onchange = function() {
				var theme = '../minified/themes/' + themeInput.value + '.min.css';

				document.getElementById('theme-style').href = theme;
			};
		</script>
		<!-- <p>SCEditor is licensed under the <a href="http://www.opensource.org/licenses/mit-license.php">MIT</a></p> -->
