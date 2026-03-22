.class public final Lcom/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1",
        "Lcom/facebook/GraphRequest$Callback;",
        "Lcom/facebook/GraphResponse;",
        "response",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/GraphResponse;)V",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/GraphResponse;)V
    .locals 2
    .param p1    # Lcom/facebook/GraphResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "data"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/facebook/GraphRequest$Companion$newMyFriendsRequest$wrapper$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/GraphRequest$GraphJSONArrayCallback;

    .line 20
    .line 21
    invoke-interface {v1, v0, p1}, Lcom/facebook/GraphRequest$GraphJSONArrayCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONArray;Lcom/facebook/GraphResponse;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
