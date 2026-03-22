.class public final Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;
.super Ljava/lang/Object;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/URL;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "vendorKey"

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/unity3d/utils/c;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/URL;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "resourceUrl"

    .line 20
    .line 21
    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/unity3d/utils/c;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "verificationParameters"

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lcom/iab/omid/library/unity3d/utils/c;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/net/URL;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/unity3d/adsession/VerificationScriptResource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/net/URL;

    .line 2
    .line 3
    return-object v0
.end method
