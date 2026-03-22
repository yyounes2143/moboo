.class public final synthetic Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpConfig;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/webkit/WebViewCompat;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
