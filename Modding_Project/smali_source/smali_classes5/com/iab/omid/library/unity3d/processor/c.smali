.class public Lcom/iab/omid/library/unity3d/processor/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/unity3d/processor/a;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/processor/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/unity3d/processor/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/iab/omid/library/unity3d/processor/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/processor/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/internal/c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/iab/omid/library/unity3d/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    mul-int/lit8 v2, v2, 0x2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x3

    .line 23
    .line 24
    new-instance v3, Ljava/util/IdentityHashMap;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/iab/omid/library/unity3d/adsession/a;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/iab/omid/library/unity3d/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    invoke-static {v2}, Lcom/iab/omid/library/unity3d/utils/h;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_0

    .line 56
    .line 57
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {v3, v2, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {v2}, Lcom/iab/omid/library/unity3d/utils/h;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    :goto_1
    if-lez v5, :cond_1

    .line 81
    .line 82
    add-int/lit8 v6, v5, -0x1

    .line 83
    .line 84
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    check-cast v6, Landroid/view/View;

    .line 89
    .line 90
    invoke-static {v6}, Lcom/iab/omid/library/unity3d/utils/h;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;)F

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    cmpl-float v6, v6, v4

    .line 95
    .line 96
    if-lez v6, :cond_1

    .line 97
    .line 98
    add-int/lit8 v5, v5, -0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lorg/json/JSONObject;Lcom/iab/omid/library/unity3d/processor/a$a;ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iab/omid/library/unity3d/processor/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result p4

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p4, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    check-cast v1, Landroid/view/View;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/iab/omid/library/unity3d/processor/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/unity3d/processor/a;

    .line 21
    .line 22
    invoke-interface {p3, v1, v2, p2, p5}, Lcom/iab/omid/library/unity3d/processor/a$a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/view/View;Lcom/iab/omid/library/unity3d/processor/a;Lorg/json/JSONObject;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1, p1, p1, p1}, Lcom/iab/omid/library/unity3d/utils/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IIII)Lorg/json/JSONObject;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-static {}, Lcom/iab/omid/library/unity3d/utils/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/unity3d/adsession/OutputDeviceStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/iab/omid/library/unity3d/utils/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Lcom/iab/omid/library/unity3d/adsession/OutputDeviceStatus;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method
