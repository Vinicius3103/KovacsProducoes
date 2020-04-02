<?php include 'header.php' ?>
<body>
    <nav class="navbar navbar-light navbar-expand-lg bg-secondary mb-2" id="mainNav-1">
        <div class="container"><a class="navbar-brand" href="#"><img class="rounded-circle" src="assets/img/christopher-campbell-rDEOVtE7vOs-unsplash.jpg" width="60px" height="60px"></a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-align-justify"></i></button>
            <div class="collapse navbar-collapse" id="navbarResponsive-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"></li>
                    <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="#contact">Info</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="#portfolio">Settings</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
            <?php include 'gerente_sidebar.php' ?>
            <div class="col card-groups">
                <div class="row mb-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body"><i class="fa fa-plus fa-5x"></i>
                                <h4 class="card-title mt-3">Adicionar</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body"><i class="fa fa-search fa-5x"></i>
                                <h4 class="card-title mt-3">Consultar</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body"><i class="fas fa-edit fa-5x"></i>
                                <h4 class="card-title mt-3">Alterar</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-4">
                    <div class="col">
                        <div class="card">
                            <div class="card-body"><i class="fa fa-times fa-5x"></i>
                                <h4 class="card-title mt-3">Remover</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <div class="card-body"><i class="fa fa-file-text-o fa-5x"></i>
                                <h4 class="card-title mt-3">Relatório</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include 'footer.php' ?>