.class public final synthetic Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpResult;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpResult;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
