.class public Lcom/iab/omid/library/mmadbridge/adsession/a;
.super Lcom/iab/omid/library/mmadbridge/adsession/AdSession;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/PossibleObstructionListener;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/weakreference/a;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/a;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSession;-><init>()V

    new-instance v0, Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;

    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;

    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/mmadbridge/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwww()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/iab/omid/library/mmadbridge/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwww()V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;)V

    return-void
.end method


# virtual methods
.method public Wwwwwwwwww()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Wwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/PossibleObstructionListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mmadbridge/internal/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwww()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 8
    .line 9
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/iab/omid/library/mmadbridge/weakreference/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Loaded event can only be sent once"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/mmadbridge/weakreference/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/view/View;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/PossibleObstructionListener;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/adsession/PossibleObstructionListener;->onPossibleObstructionsDetected(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/iab/omid/library/mmadbridge/adsession/a;

    .line 32
    .line 33
    if-eq v1, p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Impression event can only be sent once"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/i;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 30
    .line 31
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Date;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/a;Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContext;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "AdView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/mmadbridge/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/weakreference/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwww()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/internal/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwww()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwww()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/adsession/PossibleObstructionListener;

    .line 42
    .line 43
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/internal/f;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/mmadbridge/internal/f;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
