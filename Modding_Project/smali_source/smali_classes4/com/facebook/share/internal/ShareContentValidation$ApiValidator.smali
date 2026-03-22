.class final Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;
.super Lcom/facebook/share/internal/ShareContentValidation$Validator;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareContentValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiValidator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/share/internal/ShareContentValidation$ApiValidator;",
        "Lcom/facebook/share/internal/ShareContentValidation$Validator;",
        "<init>",
        "()V",
        "Lcom/facebook/share/model/SharePhoto;",
        "photo",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/share/model/SharePhoto;)V",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "videoContent",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/share/model/ShareVideoContent;)V",
        "Lcom/facebook/share/model/ShareMediaContent;",
        "mediaContent",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/share/model/ShareMediaContent;)V",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "linkContent",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/share/model/ShareLinkContent;)V",
        "facebook-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/share/internal/ShareContentValidation$Validator;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareVideoContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/facebook/internal/Utility;->Kk(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/Collection;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/facebook/internal/Utility;->Illllllllllllllllllllllllllll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lcom/facebook/internal/Utility;->Kk(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 37
    .line 38
    const-string v0, "Cannot share video content with referrer URL using the share api"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    .line 45
    .line 46
    const-string v0, "Cannot share video content with people IDs using the share api"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    new-instance p1, Lcom/facebook/FacebookException;

    .line 53
    .line 54
    const-string v0, "Cannot share video content with place IDs using the share api"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/model/SharePhoto;)V
    .locals 1
    .param p1    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/facebook/share/internal/ShareContentValidation;->INSTANCE:Lcom/facebook/share/internal/ShareContentValidation;

    .line 2
    .line 3
    invoke-static {v0, p1, p0}, Lcom/facebook/share/internal/ShareContentValidation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/internal/ShareContentValidation;Lcom/facebook/share/model/SharePhoto;Lcom/facebook/share/internal/ShareContentValidation$Validator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareMediaContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lcom/facebook/FacebookException;

    .line 2
    .line 3
    const-string v0, "Cannot share ShareMediaContent using the share api"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/share/model/ShareLinkContent;)V
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareLinkContent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/facebook/internal/Utility;->Kk(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    .line 15
    .line 16
    const-string v0, "Cannot share link content with quote using the share api"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method
