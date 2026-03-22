.class public Landroidx/webkit/internal/NavigationAdapter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroidx/webkit/Navigation;


# instance fields
.field mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

.field mPage:Landroidx/webkit/internal/PageImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public didCommit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommit()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public didCommitErrorPage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->didCommitErrorPage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPage()Landroidx/webkit/Page;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mPage:Landroidx/webkit/internal/PageImpl;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getPage()Ljava/lang/reflect/InvocationHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-class v1, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 22
    .line 23
    invoke-static {v1, v0}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 28
    .line 29
    new-instance v1, Landroidx/webkit/internal/PageImpl;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/webkit/internal/NavigationAdapter;->mPage:Landroidx/webkit/internal/PageImpl;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mPage:Landroidx/webkit/internal/PageImpl;

    .line 37
    .line 38
    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->getStatusCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isBack()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isBack()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isForward()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isForward()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isHistory()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isHistory()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isReload()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isRestore()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isRestore()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSameDocument()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->isSameDocument()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public wasInitiatedByPage()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/NavigationAdapter;->mImpl:Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewNavigationBoundaryInterface;->wasInitiatedByPage()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
