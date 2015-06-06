<!DOCTYPE html>
<html>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
        <title>Programação Web</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <!-- BEGIN CORE CSS FRAMEWORK -->
        <link href="/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
        <link href="/assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="/assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
        <!-- END CORE CSS FRAMEWORK -->

        <!-- BEGIN CSS TEMPLATE -->
        <link href="/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="/assets/css/responsive.css" rel="stylesheet" type="text/css"/>
        <link href="/assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
        <!-- END CSS TEMPLATE -->
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="error-body no-top">
        <div class="container" style="margin-top: 20px;">

            <?php if ($sucesso) : ?>
                <div class="alert alert-success">
                    <button class="close" data-dismiss="alert"></button>
                    <?= $sucesso ?>
                </div>
            <?php endif; ?>
            <?php if ($noticia) : ?>
                <div class="alert">
                    <button class="close" data-dismiss="alert"></button>
                    <?= $noticia ?>
                </div>
            <?php endif; ?>
            <?php if ($validacao) : ?>
                <div class="alert alert-error">
                    <button class="close" data-dismiss="alert"></button>
                    <?= $validacao ?>
                </div>
            <?php endif; ?>
            <?php if ($erro) : ?>
                <div class="alert alert-error">
                    <button class="close" data-dismiss="alert"></button>
                    <?= $erro ?>
                </div>
            <?php endif; ?>

            <div class="row login-container column-seperation">  
                <div class="col-md-5 col-md-offset-1">
                    <h2>Programação Web</h2>
                    <p>
                        <strong>Trabalho</strong><br>
                        <br>
                        Trabalho referente a 2ª NI da disciplina de Programação
                        Web, atarefado pelo professor Alan Marcel.
                    </p>
                </div>
                <div class="col-md-5 ">
                    <br>
                    <form id="login-form" class="login-form" action="<?= base_url('/admin/serviceauth/logar') ?>" method="post">
                        <div class="row">
                            <div class="form-group col-md-10">
                                <label class="form-label">Usuário</label>
                                <div class="controls">
                                    <div class="input-with-icon right">                                       
                                        <i class=""></i>
                                        <input type="text" name="email" id="txtusername" class="form-control">                                 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-md-10">
                                <label class="form-label">Senha</label>
                                <span class="help"></span>
                                <div class="controls">
                                    <div class="input-with-icon right">                                       
                                        <i class=""></i>
                                        <input type="password" name="senha" id="txtpassword" class="form-control">                                 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-md-10">
                                <input type="submit" value="Login" class="btn btn-primary btn-cons pull-right">
                                <button id="cadastrar" type="button" data-toggle="modal" data-target="#modalCadastrarUsuario" class="btn btn-info btn-cons">Cadastre-se</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="modal fade" id="modalCadastrarUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Cadastre-se Já!</h4>
                            </div>
                            <div id="modalCadastrarUsuarioContent" class="modal-body">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label class="form-label">Campos Obrigatórios *</label>
                                    </div>
                                </div>
                                <form id="formCadastrarUsuario" method="post">
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Nome do Usuário: *</label>
                                            <div class="controls">
                                                <div class="input-with-icon right">                                       
                                                    <i class=""></i>
                                                    <input class="form-control" type="text" name="nome">                                 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6" style="margin-top: 25px; text-align: center;">
                                            <label class="form-label">Sexo: *</label>
                                            <div class="radio radio-success">
                                                <input id="yes" type="radio" name="sexo" value="1" checked="checked">
                                                <label for="yes">Masculino</label>
                                                <input id="no" type="radio" name="sexo" value="0">
                                                <label for="no">Feminino</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label class="form-label">E-mail: *</label>
                                            <div class="controls">
                                                <div class="input-with-icon right">                                       
                                                    <i class=""></i>
                                                    <input class="form-control" type="text" name="email">                                 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-12">
                                            <label class="form-label">Grupo: *</label>
                                            <div class="controls">
                                                <div class="input-with-icon right">
                                                    <select name="id_grupo" style="width:100%">
                                                        <?php if (count($grupos) > 0) : ?>
                                                            <option value="0">Selecione</option>
                                                            <?php foreach ($grupos as $grupo) : ?>
                                                                <option value="<?= $grupo->id ?>"><?= $grupo->grupo ?></option>
                                                            <?php endforeach; ?>
                                                        <?php else : ?>
                                                            <option value="0">Não Existe Nenhum Grupo Cadastrados</option>
                                                        <?php endif; ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Senha: *</label>
                                            <div class="controls">
                                                <div class="input-with-icon right">                                       
                                                    <i class=""></i>
                                                    <input class="form-control" type="password" name="password">                                 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label class="form-label">Nova Senha: *</label>
                                            <div class="controls">
                                                <div class="input-with-icon right">                                       
                                                    <i class=""></i>
                                                    <input class="form-control" type="password" name="password2">                                 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                <button id="btnSalvarUsuario" type="button" class="btn btn-success" hidden>Salvar</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN CORE JS FRAMEWORK-->
        <script src="/assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
        <script src="/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
        <!-- BEGIN CORE TEMPLATE JS -->
        <!-- END CORE TEMPLATE JS -->

        <script>
            $("#btnSalvarUsuario").click(function () {
                $("#formCadastrarUsuario").attr('action', '/admin/serviceauth/inserirUsuario');
                $("#formCadastrarUsuario").submit();
            });
        </script>
    </body>
</html>