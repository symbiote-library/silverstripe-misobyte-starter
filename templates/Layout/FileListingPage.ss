<section class="container first">
	<div class="row content-start">
		<div class="col-md-12">
			<h1>$Title</h1>
			$Content
			$Form
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-push-6 ">
			$FileSearchForm
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12 ">
			<div class="file-listing">
				<% if FolderLineage %>
					<div class="lineage">
						<ul class="inline-list clearfix">
							<% loop FolderLineage %>
								<% if First %>
									<li><a href="$Top.Link">$Title</a></li>
								<% else %>
									<li> / <a href="{$Top.Link}?cat=$ID">$Title</a></li>
								<% end_if %>
							<% end_loop %>
						</ul>
					</div>
				<% end_if %>
				
				<% if Files %>
					<table class="files-table">
						<thead>
							<tr>
								<th class="name">Name</th>
								<th class="type">Type</th>
								<th class="size">Size</th>
								<th class="date">Last edited</th>
								<th class="tags">Tags</th>
							</tr>
						</thead>
						<tbody>
							<% loop Files %>
								<tr>
									<% if ClassName == "Folder" %>
										<% if Children %>
											<td class="name"><a href="$Location">$Title</a></td>
											<td class="filetype">
												<span class="typcn typcn-folder"></span>&nbsp;<a href="$Location" class="folder">Folder</a>
											</td>
										<% else %>
											<td class="name">$Title</td>
											<td class="filetype"><span class="typcn typcn-folder"></span>&nbsp;Folder</td>
										<% end_if %>
										<td>$Children.count</td>
										<td>-</td>
										<td>-</td>
									<% else %>
										<td class="name"><a href="$Location">$Title</a></td>
										<td class="type"><a href="$Location" title="$Title.XML" class="$Extension"></a>$Extension</td>
										<td class="size">$getSize</td>
										<td class="date">$LastEdited.Nice<% if Owner %><br /><span class="owner">$Owner.Name</span><% end_if %></td>
										<td class"tags">
											<% if Terms %>
												<ul class="inline-list tight tags">
													<% loop Terms %>
														<li><a href="{$Top.Link}?cat={$Top.SourceFolderID}&amp;term={$Name}">$Name</a></li>
													<% end_loop %>
												</ul>
											<% end_if %>
										</td>
									<% end_if %>
								</tr>
							<% end_loop %>
						</tbody>
					</table>
			
					<% with Files %>
						<% if MoreThanOnePage %>
							<ul class="pagination">
								<% if NotFirstPage %>
									<li class="arrow"><a href="{$PrevLink}">&laquo;</a></li>
								<% else %>
									<li class="arrow unavailable"><a href="{$PrevLink}">&laquo;</a></li>
								<% end_if %>
			
								<% loop PaginationSummary(4) %>
									<% if CurrentBool %>
										<li class="current"><a title="Viewing page {$PageNum} of results" class="disabled">{$PageNum}</a></li>
									<% else %>
										<% if Link %>
											<li><a title="View page {$PageNum} of results" class="<% if BeforeCurrent %>paginate-left<% else %>paginate-right<% end_if %>" href="{$Link}">{$PageNum}</a></li>
										<% else %>
											<li class="disabled"><a class="disabled">...</a></li>
										<% end_if %>
									<% end_if %>
								<% end_loop %>
			
								<% if NotLastPage %>
									<li class="arrow"><a href="{$NextLink}">&raquo;</a></li>
								<% else %>
									<li class="arrow unavailable"><a href="{$NextLink}">&raquo;</a></li>
								<% end_if %>
							</ul>
						<% end_if %>
					<% end_with %>
			
				<% else %>
					<p>Sorry, there are no files to view.</p>
				<% end_if %>
			
			</div>
		</div>
	</div>
</section>