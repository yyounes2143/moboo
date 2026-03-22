.class public Lcom/iab/omid/library/vungle/walking/async/e;
.super Lcom/iab/omid/library/vungle/walking/async/a;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/vungle/walking/async/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/vungle/walking/async/b$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/iab/omid/library/vungle/walking/async/a;-><init>(Lcom/iab/omid/library/vungle/walking/async/b$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/internal/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/internal/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/iab/omid/library/vungle/adsession/a;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/iab/omid/library/vungle/walking/async/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/iab/omid/library/vungle/adsession/a;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-wide v2, p0, Lcom/iab/omid/library/vungle/walking/async/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 44
    .line 45
    invoke-virtual {v1, p1, v2, v3}, Lcom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public varargs Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/iab/omid/library/vungle/walking/async/a;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/vungle/walking/async/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/iab/omid/library/vungle/walking/async/b;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/vungle/walking/async/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/iab/omid/library/vungle/walking/async/e;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
