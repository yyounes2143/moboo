.class public final Lgatewayprotocol/v1/TestDataKt$Dsl;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0018\u001a\u00020\u0019H\u0001J\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001d\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u001bJ\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000bR$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lgatewayprotocol/v1/TestDataKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;",
        "(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V",
        "value",
        "",
        "forceCampaignId",
        "getForceCampaignId",
        "()Ljava/lang/String;",
        "setForceCampaignId",
        "(Ljava/lang/String;)V",
        "forceCountry",
        "getForceCountry",
        "setForceCountry",
        "forceCountrySubdivision",
        "getForceCountrySubdivision",
        "setForceCountrySubdivision",
        "",
        "forceExchangeTestMode",
        "getForceExchangeTestMode",
        "()I",
        "setForceExchangeTestMode",
        "(I)V",
        "_build",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
        "clearForceCampaignId",
        "",
        "clearForceCountry",
        "clearForceCountrySubdivision",
        "clearForceExchangeTestMode",
        "hasForceCampaignId",
        "",
        "hasForceCountry",
        "hasForceCountrySubdivision",
        "hasForceExchangeTestMode",
        "Companion",
        "unity-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/TestDataKt$Dsl;->Companion:Lgatewayprotocol/v1/TestDataKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TestDataKt$Dsl;-><init>(Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TestDataOuterClass$TestData;
    .locals 1
    .annotation build Lkotlin/PublishedApi;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final clearForceCampaignId()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceCountry()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceCountrySubdivision()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearForceExchangeTestMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getForceCampaignId()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getForceCampaignId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCampaignId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getForceCountry()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getForceCountry"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountry()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getForceCountrySubdivision()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getForceCountrySubdivision"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceCountrySubdivision()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getForceExchangeTestMode()I
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getForceExchangeTestMode"
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->getForceExchangeTestMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCampaignId()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCampaignId()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCountry()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountry()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceCountrySubdivision()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceCountrySubdivision()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasForceExchangeTestMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->hasForceExchangeTestMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setForceCampaignId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setForceCampaignId"
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setForceCountry(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setForceCountry"
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setForceCountrySubdivision(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "setForceCountrySubdivision"
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setForceExchangeTestMode(I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "setForceExchangeTestMode"
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataKt$Dsl;->_builder:Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
