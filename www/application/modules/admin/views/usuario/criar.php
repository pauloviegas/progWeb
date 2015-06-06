<?= $topo ?>

<!-- BEGIN CONTAINER -->
<div class="page-container row-fluid">

    <?= $menulateral ?>

    <!-- BEGIN PAGE CONTAINER-->
    <div class="page-content"> 

        <div class="clearfix"></div>
        <div class="content">  

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

            <form id="form" method="post">
                <div class="grid simple">
                    <div class="grid-title no-border">
                        <h4>Cadastrar Usuário</h4>
                    </div>
                    <div class="grid-body no-border"><br>
                        <div class="row">
                            <div class="col-md-8 col-sm-8 col-xs-8">
                                <div class="form-group">
                                    <label class="form-label">Nome</label>
                                    <div class="controls">
                                        <input type="text" name="nome" value="<?= set_value('nome') ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Grupo de Usuário</label>
                                    <div class="controls">
                                        <select name="id_grupo" id="source" style="width:100%" tabindex="-1" class="select2-offscreen">
                                            <?php if (count($grupos) > 0) : ?>
                                                <option value="0">Selecione um grupo de usuário</option>
                                                <?php foreach ($grupos as $grupo) : ?>
                                                    <option value="<?= $grupo->id ?>" <?= (set_value('id_grupo') == $grupo->id) ? 'selected' : '' ?> ><?= $grupo->grupo ?></option>
                                                <?php endforeach; ?>
                                            <?php else : ?>
                                                <option value="CT">Testes</option>
                                            <?php endif; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Senha</label>
                                    <span class="help">*Minimo de 4 e Máximo de 12 caracteres</span>
                                    <div class="controls">
                                        <input type="password" name="password" value="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">Confirmar Senha</label>
                                    <span class="help">*Minimo de 4 e Máximo de 12 caracteres</span>
                                    <div class="controls">
                                        <input type="password" name="password2" value="" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="form-label">E-mail</label>
                                    <span class="help">exemplo@exemplo.com ou exemplo@exemplo.com.br</span>
                                    <div class="controls">
                                        <input type="text" name="email" value="<?= set_value('email') ?>" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="controls">
                                        <button id="salvar" type="button" class="btn btn-primary btn-cons">Salvar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END CONTAINER --> 
<?= $rodape ?>

<script>
    $("#salvar").click(function () {
        $("#form").attr('action', '/admin/usuario/inserir');
        $("#form").submit();
    });
</script>