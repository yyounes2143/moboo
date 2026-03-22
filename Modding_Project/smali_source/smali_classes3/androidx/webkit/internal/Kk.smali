.class public final synthetic Landroidx/webkit/internal/Kk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/PrerenderOperationCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/PrerenderOperationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/Kk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/PrerenderOperationCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/Kk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/webkit/PrerenderOperationCallback;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-static {v0, p1}, Landroidx/webkit/internal/WebViewProviderAdapter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroidx/webkit/PrerenderOperationCallback;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
