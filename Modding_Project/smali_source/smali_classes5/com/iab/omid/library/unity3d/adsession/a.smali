.class public Lcom/iab/omid/library/unity3d/adsession/a;
.super Lcom/iab/omid/library/unity3d/adsession/AdSession;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/PossibleObstructionListener;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/weakreference/a;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/internal/e;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^[a-zA-Z0-9 ]+$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/iab/omid/library/unity3d/adsession/AdSession;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 15
    .line 16
    iput-object p1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;

    .line 19
    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p0, v1}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 39
    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 47
    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance v1, Lcom/iab/omid/library/unity3d/publisher/b;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {v1, v0, v2, p2}, Lcom/iab/omid/library/unity3d/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iput-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_1
    :goto_1
    new-instance v1, Lcom/iab/omid/library/unity3d/publisher/a;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/webkit/WebView;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v1, v0, p2}, Lcom/iab/omid/library/unity3d/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwww()V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/c;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, p0}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/a;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwww()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 13
    .line 14
    return-void
.end method

.method public Wwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/adsession/AdSessionConfiguration;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

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

.method public Wwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/PossibleObstructionListener;

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

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/iab/omid/library/unity3d/weakreference/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/iab/omid/library/unity3d/weakreference/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/weakreference/a;

    .line 7
    .line 8
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/internal/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

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
    check-cast v1, Lcom/iab/omid/library/unity3d/adsession/a;

    .line 32
    .line 33
    if-eq v1, p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-ne v2, p1, :cond_0

    .line 40
    .line 41
    iget-object v1, v1, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/weakreference/a;

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

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/weakreference/a;

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

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

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

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/weakreference/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()Z

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
    check-cast v1, Lcom/iab/omid/library/unity3d/weakreference/a;

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
    iget-object p1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/PossibleObstructionListener;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v1, v0}, Lcom/iab/omid/library/unity3d/adsession/PossibleObstructionListener;->onPossibleObstructionsDetected(Ljava/lang/String;Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

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

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

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
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 8
    .line 9
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/h;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/internal/h;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(F)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 30
    .line 31
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/iab/omid/library/unity3d/internal/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Date;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;

    .line 45
    .line 46
    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/a;Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

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
    invoke-static {p1, v0}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

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
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/weakreference/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwww()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwww()V

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwww()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/PossibleObstructionListener;

    .line 42
    .line 43
    return-void
.end method
