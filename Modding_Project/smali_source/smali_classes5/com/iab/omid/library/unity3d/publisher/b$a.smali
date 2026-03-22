.class Lcom/iab/omid/library/unity3d/publisher/b$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/unity3d/publisher/b;->Wwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/unity3d/publisher/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iab/omid/library/unity3d/publisher/b$a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/iab/omid/library/unity3d/publisher/b$a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/b;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwww()Landroid/webkit/WebView;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p2, p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/iab/omid/library/unity3d/publisher/b$a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/b;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/webkit/WebView;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method
