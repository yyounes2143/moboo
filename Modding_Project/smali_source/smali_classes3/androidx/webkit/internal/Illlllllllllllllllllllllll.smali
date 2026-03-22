.class public final synthetic Landroidx/webkit/internal/Illlllllllllllllllllllllll;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcess;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcessClient;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcessClient;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcess;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcessClient;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/internal/Illlllllllllllllllllllllll;->Wwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewRenderProcess;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/webkit/internal/WebViewRenderProcessClientAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/webkit/WebViewRenderProcessClient;Landroid/webkit/WebView;Landroidx/webkit/WebViewRenderProcess;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
