.class public Lcom/iab/omid/library/mmadbridge/walking/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/mmadbridge/walking/async/b$b;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/walking/async/c;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mmadbridge/walking/async/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/walking/async/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/walking/async/c;

    .line 2
    .line 3
    new-instance v1, Lcom/iab/omid/library/mmadbridge/walking/async/f;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v4, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/mmadbridge/walking/async/f;-><init>(Lcom/iab/omid/library/mmadbridge/walking/async/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/walking/async/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/walking/async/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/walking/async/c;

    .line 2
    .line 3
    new-instance v1, Lcom/iab/omid/library/mmadbridge/walking/async/d;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/iab/omid/library/mmadbridge/walking/async/d;-><init>(Lcom/iab/omid/library/mmadbridge/walking/async/b$b;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/walking/async/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/walking/async/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/iab/omid/library/mmadbridge/walking/async/c;

    .line 2
    .line 3
    new-instance v1, Lcom/iab/omid/library/mmadbridge/walking/async/e;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-object v4, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lcom/iab/omid/library/mmadbridge/walking/async/e;-><init>(Lcom/iab/omid/library/mmadbridge/walking/async/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/walking/async/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/iab/omid/library/mmadbridge/walking/async/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/walking/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/json/JSONObject;

    return-void
.end method
