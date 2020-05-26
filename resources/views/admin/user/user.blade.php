
@extends('admin.layouts.admin')
@section('menuleft')
    @include('admin/layouts/menuleft')
@stop
@section('content')
<!-- Content Header (Page header) -->
<script>
    function checkall() {
        document.getElementById("checkboxPrimary2").checked = true;
    }
    function confirmDelete(id){
        var x=document.getElementById('confirmDelete');
        x.href="user/delete/"+id;
    }
    //alert('ok');
</script>
<div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">USERS</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>    
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Danh sách users</h3>
        </div>
        <!-- form start -->
        <form action="user" method="get">  

          <div class="card-header">
            <div class="row">
                    <div class="col-2">
                      <input type="text" class="form-control"  name="username" placeholder="username">
                    </div>
                    <div class="col-2">
                      <input type="text" class="form-control"  name="email" placeholder="email">
                    </div>
                    <div class="col-2">
                      <input type="text" class="form-control"  name="name" placeholder="Họ tên">
                    </div>
                    <div class="col-0">
                      <button class="btn btn-primary btn-flat" type="submit"><i class="fa  fa-search"></i>Tìm kiếm</button>                    
                    </div>
                    <div class="col-1">
                      <a class="btn btn-primary btn-flat" href="user/add"><i class="fa fa-plus"></i>Thêm mới</a>                    
                    </div>
            </div>
          </div>
        </form>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">
                        <div class="icheck-primary d-inline">
                                <input type="checkbox" id="checkboxPrimary1">
                                <label for="checkboxPrimary1"></label>
                        </div>
                      </th>
                      <th style="width: 1%">
                          STT
                      </th>
                      <th style="width: 10%">
                          Username
                      </th>
                      <th style="width: 25%">
                          Họ tên
                      </th>
                      <th style="width: 8%" class="text-center">
                          Email
                      </th>
                      <th style="width: 25%">
                      </th>
                  </tr>
              </thead>
              <tbody>
                  <?php $i=$stt; ?>
                  @foreach($data as $item)                 
                  <tr>
                      <td>
                            <div class="icheck-primary d-inline">
                                <input type="checkbox" id="checkboxPrimary2">
                                <label for="checkboxPrimary2"></label>
                            </div>
                      </td>
                      <td>
                          {{ $i }}
                      </td>
                      <td>
                          <a>
                              {{ $item['username'] }}
                          </a>
                      </td>
                      <td class="project_progress">
                          <p>{{ $item['name'] }}</p>
                      </td>
                      <td class="project-state">
                          <span class="badge badge-success">{{ $item['email'] }}</span>
                      </td>
                      <td class="project-actions text-right">
                          <button type="button" class="btn btn-primary btn-sm viewUserDetail" data-button='{"id": "{{ $item['id'] }}"}' data-toggle="modal" data-target="#modal-viewdetail">
                                <i class="fas fa-folder">
                                View
                                </i>
                          </button>
                          <a class="btn btn-info btn-sm" href="user/edit/{{ $item['id'] }}">
                              <i class="fas fa-pencil-alt">
                              </i>
                              Edit
                          </a>
                          <button type="button" class="btn btn-danger btn-sm" data-toggle="modal" onclick="confirmDelete({{ $item['id'] }})" data-target="#modal-default">
                                <i class="fas fa-trash">
                                Delete
                                </i>
                          </button>
                      </td>
                  </tr>
                  <?php $i++; ?>
                  @endforeach                
              </tbody>
          </table>
          {{$data->links()}}
          @if(Session::has('delete'))
                  <div class="alert alert-success">
                    <ul>
                        <li>{{Session::get('delete')}}</li>
                    </ul>   
                  </div>
          @endif
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
      <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Bạn có chắc chắn không?</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <a class="btn btn-primary" id="confirmDelete">OK</a>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <div class="alert alert-success" style="display:none"></div>
      <div class="modal fade" id="modal-viewdetail">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Xem chi tiết</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div id="content_viewdetail">
            <div class="card-body formadmin">
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Username</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="username" disabled placeholder="Username" >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Họ tên</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="fullname" disabled placeholder="Họ và tên" >
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-4 col-form-label">Email</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" name="email" disabled placeholder="Email">
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default float-right" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
    </section>
    <!-- /.content -->
@stop
