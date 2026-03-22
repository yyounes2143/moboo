.class public final Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;
.super Ljava/lang/Object;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/Partner;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/unity3d/adsession/Partner;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/Partner;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p7, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 25
    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;

    .line 46
    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iget-object p4, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput-object p5, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p6, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Partner is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "WebView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    const-string v1, "CustomReferenceData is greater than 256 characters"

    .line 16
    .line 17
    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v2, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;

    .line 21
    .line 22
    sget-object v9, Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p1

    .line 28
    move-object v7, p2

    .line 29
    move-object v8, p3

    .line 30
    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Partner is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "WebView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    const-string v1, "CustomReferenceData is greater than 256 characters"

    .line 16
    .line 17
    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/unity3d/utils/g;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v2, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;

    .line 21
    .line 22
    sget-object v9, Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v3, p0

    .line 27
    move-object v4, p1

    .line 28
    move-object v7, p2

    .line 29
    move-object v8, p3

    .line 30
    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/unity3d/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;)V

    .line 31
    .line 32
    .line 33
    return-object v2
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwww()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/adsession/Partner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/Partner;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/AdSessionContext;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/adsession/AdSessionContextType;

    .line 2
    .line 3
    return-object v0
.end method
