.class public Lcom/applovin/impl/h6;
.super Lcom/applovin/impl/i6;
.source "Proguard"


# instance fields
.field private final g:Lcom/applovin/impl/t2;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/t2;Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    const-string v0, "TaskValidateMaxReward"

    .line 2
    .line 3
    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/i6;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 10
    invoke-super {p0, p1}, Lcom/applovin/impl/e6;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 11
    const-string p1, "rejected"

    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "network_timeout"

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-static {p1}, Lcom/applovin/impl/b4;->a(Ljava/lang/String;)Lcom/applovin/impl/b4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/t2;->a(Lcom/applovin/impl/b4;)V

    .line 14
    const-string v0, "error_message"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/w4;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->P()Lcom/applovin/impl/r2;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/y1;->e0:Lcom/applovin/impl/y1;

    iget-object v2, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/r2;->a(Lcom/applovin/impl/y1;Lcom/applovin/impl/q2;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/b4;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/t2;->a(Lcom/applovin/impl/b4;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/a3;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/a3;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/a3;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom_data"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/q2;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/t2;->l0()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_MCODE"

    :goto_0
    const-string v1, "mcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    invoke-virtual {v0}, Lcom/applovin/impl/q2;->C()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "NO_BCODE"

    :goto_1
    const-string v1, "bcode"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.0/mvr"

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h6;->g:Lcom/applovin/impl/t2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/t2;->n0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
