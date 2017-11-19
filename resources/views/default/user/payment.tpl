{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Subscription
            <small>Subscription</small>
        </h1>
    </section>

    <!-- Main content --><!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div id="msg-error" class="alert alert-warning alert-dismissable" style="display:none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-warning"></i> ERROR!</h4>

                    <p id="msg-error-p"></p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-rocket"></i>

                        <h3 class="box-title">Subscription</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <p>Coming soon！ </p>

                    </div>
                    <!-- /.box -->
                    <div class="box-body">
                        <dl class="dl-horizontal">
                            <dt>Expire Time:</dt>
                            <dd>
                            <select id="amounts" name="amount" form="stripe">
                            <option value="999">$9.99/90days</option>
                            <option value="1899">$18.99/180days</option>
                            <option value="3799">$37.99/360days</option>
                            </select>

                            <form id="stripe" action="/payment/charge.php" method="post">
                            <script src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                            var obj = document.getElementById("amounts"); //定位id
                            var index = obj.selectedIndex; // 选中索引
                            var text = obj.options[index].text; // 选中文本
                            var value = obj.options[index].value; // 选中值
                            data-key="pk_test_Ce0Y0HfJkmbBy58RPWxxujhj"
                            data-description="Pro plan"
                            data-amount=$('#amounts option:selected').val();//选中的值
                            data-locale="auto">
                            </script>
                            <input type="hidden" name="userport" value="{$user->port}" />
                        </form>
                            </dd>
                            
                        </dl>
                    </div>


                    <!-- /.box-header -->

                </div>
            </div>


        </div>
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->


{include file='user/footer.tpl'}
