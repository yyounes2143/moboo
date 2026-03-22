.class public final enum Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

.field public static final enum MEDIUM:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

.field public static final enum SMALL:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;


# instance fields
.field private final resourceId:I


# direct methods
.method private static synthetic $values()[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 3
    .line 4
    sget-object v1, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->SMALL:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->MEDIUM:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget v2, Lio/flutter/plugins/googlemobileads/R$layout;->small_template_view_layout:I

    .line 5
    .line 6
    const-string v3, "SMALL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->SMALL:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 12
    .line 13
    new-instance v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    sget v2, Lio/flutter/plugins/googlemobileads/R$layout;->medium_template_view_layout:I

    .line 17
    .line 18
    const-string v3, "MEDIUM"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->MEDIUM:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 24
    .line 25
    invoke-static {}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->$values()[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->$VALUES:[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->resourceId:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromIntValue(I)Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->values()[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-ge p0, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->values()[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-object p0, v0, p0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    sget-object p0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->MEDIUM:Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;
    .locals 1

    .line 1
    const-class v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;
    .locals 1

    .line 1
    sget-object v0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->$VALUES:[Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public resourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->resourceId:I

    .line 2
    .line 3
    return v0
.end method
