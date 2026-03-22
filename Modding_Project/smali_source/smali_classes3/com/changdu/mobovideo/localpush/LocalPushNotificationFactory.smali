.class public final Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;,
        Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;,
        Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002CDB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ)\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016JI\u0010 \u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010#\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008#\u0010$JC\u0010\'\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0008\u0010&\u001a\u0004\u0018\u00010%2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\'\u0010(JM\u0010*\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u000b2\u0008\u0010)\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008*\u0010+J!\u0010-\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002\u00a2\u0006\u0004\u0008-\u0010.J\u001b\u00100\u001a\u0004\u0018\u00010\u001c2\u0008\u0010/\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u00080\u00101J!\u00104\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0002\u00a2\u0006\u0004\u00084\u00105JG\u0010;\u001a\u0004\u0018\u00010%2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u00106\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u00108\u001a\u0004\u0018\u0001072\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010:\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008;\u0010<J+\u0010>\u001a\u00020%2\u0006\u0010=\u001a\u00020%2\u0008\u00109\u001a\u0004\u0018\u00010\u00142\u0008\u0010:\u001a\u0004\u0018\u00010\u0014H\u0002\u00a2\u0006\u0004\u0008>\u0010?R\u0014\u0010B\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010A\u00a8\u0006E"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;",
        "Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;",
        "content",
        "Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;",
        "item",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Ljava/lang/String;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;)I",
        "contentTitle",
        "contentText",
        "button",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "builder",
        "",
        "countDownSeconds",
        "collapsedRightImageUrl",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;)V",
        "totalSeconds",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(J)Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        "image",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V",
        "expandedBgImageUrl",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;)V",
        "base",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;",
        "ndAction",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "Lcom/changdu/mobovideo/localpush/LocalPushConfig;",
        "config",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;",
        "url",
        "",
        "roundedCornerDp",
        "requestWidthPx",
        "requestHeightPx",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;",
        "bitmap",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;",
        "Lkotlin/text/Regex;",
        "Lkotlin/text/Regex;",
        "SERIES_ID_REGEX",
        "PushContent",
        "PushConfigContentItem",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocalPushNotificationFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushNotificationFactory.kt\ncom/changdu/mobovideo/localpush/LocalPushNotificationFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,551:1\n1#2:552\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/text/Regex;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;

    .line 7
    .line 8
    new-instance v0, Lkotlin/text/Regex;

    .line 9
    .line 10
    const-string v1, "(?:^|[?(;&])seriesid=(\\d+)"

    .line 11
    .line 12
    sget-object v2, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/text/Regex;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object p3, v0

    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x8

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    move-object p4, v0

    .line 12
    :cond_1
    and-int/lit8 p6, p6, 0x10

    .line 13
    .line 14
    if-eqz p6, :cond_2

    .line 15
    .line 16
    move-object p5, v0

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_1
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_2
    new-instance v2, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v2, v0, v1, p2, p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p2, v0

    .line 10
    :goto_0
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :cond_1
    if-lez p2, :cond_5

    .line 17
    .line 18
    if-gtz v0, :cond_2

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-gt p3, p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-gt p3, v0, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    int-to-float p2, p2

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    int-to-float p3, p3

    .line 40
    div-float/2addr p2, p3

    .line 41
    int-to-float p3, v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-float v0, v0

    .line 47
    div-float/2addr p3, v0

    .line 48
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/high16 p3, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpl-float p3, p2, p3

    .line 55
    .line 56
    if-ltz p3, :cond_4

    .line 57
    .line 58
    :goto_1
    return-object p1

    .line 59
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    int-to-float p3, p3

    .line 64
    mul-float/2addr p3, p2

    .line 65
    float-to-int p3, p3

    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    int-to-float v1, v1

    .line 76
    mul-float/2addr v1, p2

    .line 77
    float-to-int p2, v1

    .line 78
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-static {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_5
    :goto_2
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    const-string p1, "\u89e3\u9501Push"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 22
    .line 23
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    const-string p1, "\u53ec\u56dePush"

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    const-string p1, "\u7b7e\u5230Push"

    .line 31
    .line 32
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;)Z
    .locals 28
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    aget v2, v2, v3

    .line 14
    .line 15
    const-string v6, "1"

    .line 16
    .line 17
    const-string v7, "2"

    .line 18
    .line 19
    const-string v8, "3"

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    if-eq v2, v10, :cond_2

    .line 23
    .line 24
    const/4 v3, 0x2

    .line 25
    if-eq v2, v3, :cond_1

    .line 26
    .line 27
    const/4 v3, 0x3

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    const v2, 0x7f110350

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v3, 0x7f11034c

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const v4, 0x7f110355

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;

    .line 52
    .line 53
    invoke-direct {v5, v2, v3, v4, v8}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 58
    .line 59
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw v1

    .line 63
    :cond_1
    const v2, 0x7f11034d

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const v3, 0x7f110348

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const v4, 0x7f110338

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-instance v5, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;

    .line 85
    .line 86
    invoke-direct {v5, v2, v3, v4, v7}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const v2, 0x7f110305

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const v3, 0x7f1102ff

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    const v4, 0x7f110301

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    new-instance v5, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;

    .line 112
    .line 113
    invoke-direct {v5, v2, v3, v4, v6}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/changdu/mobovideo/localpush/LocalPushConfigProvider;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushConfig;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v0, v9, v11}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    const/4 v13, 0x0

    .line 127
    if-nez v12, :cond_3

    .line 128
    .line 129
    invoke-virtual {v0, v9}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    return v13

    .line 133
    :cond_3
    invoke-virtual {v0, v5, v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-virtual {v11}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwww()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    const-wide/16 v4, 0x0

    .line 142
    .line 143
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v15

    .line 147
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushType;->PROMOTION:Lcom/changdu/mobovideo/localpush/LocalPushType;

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    if-ne v9, v2, :cond_4

    .line 152
    .line 153
    invoke-virtual {v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v0, v3}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    move-object/from16 v18, v3

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    move-object/from16 v18, v17

    .line 165
    .line 166
    :goto_1
    if-ne v9, v2, :cond_5

    .line 167
    .line 168
    move-object v3, v2

    .line 169
    invoke-virtual {v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const/high16 v4, 0x40800000    # 4.0f

    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    sget-object v5, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 180
    .line 181
    move/from16 v19, v13

    .line 182
    .line 183
    const/high16 v13, 0x428a0000    # 69.0f

    .line 184
    .line 185
    invoke-virtual {v5, v1, v13}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    float-to-int v13, v13

    .line 190
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    const/high16 v10, 0x42b80000    # 92.0f

    .line 195
    .line 196
    invoke-virtual {v5, v1, v10}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    float-to-int v5, v5

    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    move-object v10, v3

    .line 206
    move-object v3, v4

    .line 207
    move-object v4, v13

    .line 208
    invoke-virtual/range {v0 .. v5}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    move-object v4, v2

    .line 213
    goto :goto_2

    .line 214
    :cond_5
    move-object v10, v2

    .line 215
    move/from16 v19, v13

    .line 216
    .line 217
    move-object/from16 v4, v17

    .line 218
    .line 219
    :goto_2
    const-string v0, "notification"

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    instance-of v2, v0, Landroid/app/NotificationManager;

    .line 226
    .line 227
    if-eqz v2, :cond_6

    .line 228
    .line 229
    move-object/from16 v17, v0

    .line 230
    .line 231
    check-cast v17, Landroid/app/NotificationManager;

    .line 232
    .line 233
    :cond_6
    move-object/from16 v13, v17

    .line 234
    .line 235
    if-nez v13, :cond_7

    .line 236
    .line 237
    return v19

    .line 238
    :cond_7
    sget-object v0, Lcom/changdu/mobovideo/utils/NotificationUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/NotificationUtil;

    .line 239
    .line 240
    invoke-virtual {v0, v1, v13}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Landroid/content/Intent;

    .line 244
    .line 245
    const-class v3, Lcom/changdu/mobovideo/MainActivity;

    .line 246
    .line 247
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .line 249
    .line 250
    const-string v3, "local_push_type"

    .line 251
    .line 252
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    sget-object v5, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;

    .line 264
    .line 265
    invoke-virtual {v5, v9, v14, v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    .line 271
    .line 272
    sget-object v3, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 273
    .line 274
    const v5, 0x1adb0

    .line 275
    .line 276
    .line 277
    move-object/from16 v17, v2

    .line 278
    .line 279
    const v2, 0x5f5e0ff

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3, v5, v2}, Lkotlin/random/Random$Default;->nextInt(II)I

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/utils/NotificationUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {v5, v1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    packed-switch v3, :pswitch_data_0

    .line 304
    .line 305
    .line 306
    :goto_3
    move v15, v2

    .line 307
    :goto_4
    move-object/from16 v11, v17

    .line 308
    .line 309
    goto/16 :goto_7

    .line 310
    .line 311
    :pswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_8

    .line 316
    .line 317
    goto :goto_3

    .line 318
    :cond_8
    move v0, v2

    .line 319
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    move-object v6, v5

    .line 328
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    move v8, v0

    .line 333
    move-object/from16 v0, p0

    .line 334
    .line 335
    invoke-virtual/range {v0 .. v6}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V

    .line 336
    .line 337
    .line 338
    move-object/from16 v1, p1

    .line 339
    .line 340
    move-object v5, v6

    .line 341
    :goto_5
    move v15, v8

    .line 342
    goto :goto_4

    .line 343
    :pswitch_1
    move v8, v2

    .line 344
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_9

    .line 349
    .line 350
    :goto_6
    move-object/from16 v1, p1

    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_9
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v11}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-virtual {v11}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v7

    .line 373
    move-object/from16 v0, p0

    .line 374
    .line 375
    move-object/from16 v1, p1

    .line 376
    .line 377
    invoke-virtual/range {v0 .. v7}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :pswitch_2
    move v8, v2

    .line 382
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_a

    .line 387
    .line 388
    goto :goto_6

    .line 389
    :cond_a
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v4

    .line 401
    invoke-virtual {v11}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwww()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    move-object/from16 v1, p1

    .line 406
    .line 407
    move-wide v6, v15

    .line 408
    move-object/from16 v11, v17

    .line 409
    .line 410
    move v15, v8

    .line 411
    move-object v8, v0

    .line 412
    move-object/from16 v0, p0

    .line 413
    .line 414
    invoke-virtual/range {v0 .. v8}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    :goto_7
    const/high16 v0, 0x7f0e0000

    .line 418
    .line 419
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    new-instance v2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    .line 440
    .line 441
    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 445
    .line 446
    .line 447
    const/high16 v0, 0xc000000

    .line 448
    .line 449
    invoke-static {v1, v15, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 450
    .line 451
    .line 452
    invoke-static {v1, v15, v11, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-static {v2, v1, v15, v11, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 464
    .line 465
    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 467
    .line 468
    const/16 v2, 0x1a

    .line 469
    .line 470
    if-lt v0, v2, :cond_b

    .line 471
    .line 472
    const/4 v0, 0x1

    .line 473
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 474
    .line 475
    .line 476
    :cond_b
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 495
    .line 496
    or-int/lit8 v2, v2, 0x10

    .line 497
    .line 498
    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 499
    .line 500
    invoke-virtual {v13, v15, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 501
    .line 502
    .line 503
    invoke-static {v13, v15, v0}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onNotify(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    .line 504
    .line 505
    .line 506
    if-ne v9, v10, :cond_d

    .line 507
    .line 508
    if-eqz v18, :cond_c

    .line 509
    .line 510
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->longValue()J

    .line 511
    .line 512
    .line 513
    move-result-wide v22

    .line 514
    sget-object v21, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 515
    .line 516
    const/16 v26, 0x2

    .line 517
    .line 518
    const/16 v27, 0x0

    .line 519
    .line 520
    const-wide/16 v24, 0x0

    .line 521
    .line 522
    invoke-static/range {v21 .. v27}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;JJILjava/lang/Object;)V

    .line 523
    .line 524
    .line 525
    :cond_c
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    :cond_d
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushAnalyticsReporter;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushAnalyticsReporter;

    .line 529
    .line 530
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-virtual {v14}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v5

    .line 542
    move-object v2, v9

    .line 543
    invoke-virtual/range {v0 .. v5}, Lcom/changdu/mobovideo/localpush/LocalPushAnalyticsReporter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/changdu/mobovideo/localpush/LocalPushType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    const/16 v20, 0x1

    .line 547
    .line 548
    return v20

    .line 549
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushConfig;)Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;
    .locals 9

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 36
    .line 37
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwwwwwwwww()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwww()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushConfig;->Wwwwwwwwwwwwww()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    :goto_0
    invoke-virtual {p2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Ljava/lang/Number;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_3

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    .line 101
    .line 102
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-gtz v0, :cond_4

    .line 110
    .line 111
    return-object v2

    .line 112
    :cond_4
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushContentRule;

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Lcom/changdu/mobovideo/localpush/LocalPushContentRule;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-ne p2, v1, :cond_5

    .line 119
    .line 120
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 121
    .line 122
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    invoke-virtual {p1, p2}, Lkotlin/random/Random$Default;->nextInt(I)I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    sget-object p2, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-gez v0, :cond_6

    .line 138
    .line 139
    const/4 v0, 0x0

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    rem-int/2addr v0, v1

    .line 146
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 147
    .line 148
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    rem-int/2addr v1, v4

    .line 153
    invoke-virtual {p2, p1, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V

    .line 154
    .line 155
    .line 156
    move p1, v0

    .line 157
    :goto_2
    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-nez p1, :cond_7

    .line 162
    .line 163
    new-instance p1, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .line 167
    .line 168
    :cond_7
    new-instance v3, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;

    .line 169
    .line 170
    const-string p2, "title"

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    const-string p2, "content"

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    const-string p2, "ndaction"

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    const-string p2, "cover"

    .line 189
    .line 190
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    const-string p2, "buttonText"

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-direct/range {v3 .. v8}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    return-object v3

    .line 204
    :catchall_0
    :cond_8
    :goto_3
    return-object v2
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_5

    .line 3
    .line 4
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    new-instance v1, Lcoil/request/ImageRequest$Builder;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p2, v1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)Lcoil/request/ImageRequest$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    sget-object v1, Lcoil/request/CachePolicy;->DISABLED:Lcoil/request/CachePolicy;

    .line 26
    .line 27
    invoke-virtual {p2, v1}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcoil/request/CachePolicy;)Lcoil/request/ImageRequest$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcoil/request/ImageRequest$Builder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcoil/request/ImageRequest;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v1, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$loadBitmapFromUrl$result$1;

    .line 36
    .line 37
    invoke-direct {v1, p1, p2, v0}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$loadBitmapFromUrl$result$1;-><init>(Landroid/content/Context;Lcoil/request/ImageRequest;Lkotlin/coroutines/Continuation;)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    invoke-static {v0, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcoil/request/ImageResult;

    .line 46
    .line 47
    invoke-virtual {p2}, Lcoil/request/ImageResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    const/4 v5, 0x7

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    const/4 v3, 0x0

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-nez p2, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {p0, p2, p4, p5}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    if-eqz p3, :cond_4

    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 72
    .line 73
    .line 74
    move-result p5

    .line 75
    const/4 v1, 0x0

    .line 76
    cmpg-float p5, p5, v1

    .line 77
    .line 78
    if-gtz p5, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    sget-object p5, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    invoke-virtual {p5, p1, p3}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p5, p4, p1}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eq p4, p2, :cond_3

    .line 96
    .line 97
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_4
    :goto_0
    return-object p4

    .line 105
    :catchall_0
    :cond_5
    :goto_1
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide/16 v0, 0xe10

    .line 8
    .line 9
    div-long v2, p1, v0

    .line 10
    .line 11
    rem-long v0, p1, v0

    .line 12
    .line 13
    const-wide/16 v4, 0x3c

    .line 14
    .line 15
    div-long/2addr v0, v4

    .line 16
    rem-long/2addr p1, v4

    .line 17
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 18
    .line 19
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 p2, 0x3

    .line 32
    new-array v1, p2, [Ljava/lang/Object;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object p1, v1, v0

    .line 42
    .line 43
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "%02d:%02d:%02d"

    .line 48
    .line 49
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlin/text/Regex;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v1, p1, v2, v3, v0}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-interface {p1}, Lkotlin/text/MatchResult;->getGroupValues()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    cmp-long v1, v1, v3

    .line 48
    .line 49
    if-lez v1, :cond_2

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 20
    .line 21
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;JLjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    new-instance v7, Landroid/widget/RemoteViews;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const v4, 0x7f0b0049

    .line 16
    .line 17
    .line 18
    invoke-direct {v7, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    new-instance v8, Landroid/widget/RemoteViews;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const v4, 0x7f0b0048

    .line 28
    .line 29
    .line 30
    invoke-direct {v8, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    const v3, 0x7f080346

    .line 34
    .line 35
    .line 36
    invoke-virtual {v7, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    const v3, 0x7f080348

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const v0, 0x7f0800cb

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0800cd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    const/high16 v0, 0x40800000    # 4.0f

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    sget-object v0, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 64
    .line 65
    const/high16 v2, 0x428a0000    # 69.0f

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    float-to-int v2, v2

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const/high16 v2, 0x42b80000    # 92.0f

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    float-to-int v0, v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    move-object/from16 v0, p0

    .line 88
    .line 89
    move-object/from16 v2, p8

    .line 90
    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const/4 v0, 0x0

    .line 96
    const v2, 0x7f080103

    .line 97
    .line 98
    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const v1, 0x7f07012c

    .line 109
    .line 110
    .line 111
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 115
    .line 116
    .line 117
    if-eqz p8, :cond_1

    .line 118
    .line 119
    invoke-static/range {p8 .. p8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    :cond_1
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/16 v2, 0x8

    .line 128
    .line 129
    const v3, 0x7f08009b

    .line 130
    .line 131
    .line 132
    if-lez v1, :cond_2

    .line 133
    .line 134
    invoke-virtual {v8, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v1, p4

    .line 138
    .line 139
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    .line 145
    .line 146
    :goto_1
    const-wide/16 v3, 0x0

    .line 147
    .line 148
    move-wide/from16 v9, p6

    .line 149
    .line 150
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 151
    .line 152
    .line 153
    move-result-wide v14

    .line 154
    cmp-long v1, v14, v3

    .line 155
    .line 156
    const v3, 0x7f0800b3

    .line 157
    .line 158
    .line 159
    if-lez v1, :cond_4

    .line 160
    .line 161
    invoke-virtual {v8, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v0, 0x3e8

    .line 165
    .line 166
    mul-long/2addr v0, v14

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    add-long v10, v4, v0

    .line 172
    .line 173
    const-string v12, "%s"

    .line 174
    .line 175
    const/4 v13, 0x1

    .line 176
    const v9, 0x7f0800b3

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {v8 .. v13}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 183
    .line 184
    const/16 v4, 0x18

    .line 185
    .line 186
    if-lt v2, v4, :cond_3

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    invoke-static {v8, v3, v2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/widget/RemoteViews;IZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 193
    .line 194
    .line 195
    move-object/from16 v0, p0

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_3
    move-object/from16 v0, p0

    .line 199
    .line 200
    invoke-virtual {v0, v14, v15}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v8, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    move-object/from16 v0, p0

    .line 209
    .line 210
    invoke-virtual {v8, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    .line 212
    .line 213
    :goto_2
    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v8}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0b0047

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/RemoteViews;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const v2, 0x7f0b0046

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f080346

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const p1, 0x7f0800cb

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x8

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    const p3, 0x7f080103

    .line 47
    .line 48
    .line 49
    if-eqz p4, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, p3, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p3, p4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0, p3, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p3, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 68
    .line 69
    .line 70
    :goto_0
    const p3, 0x7f08009b

    .line 71
    .line 72
    .line 73
    if-eqz p5, :cond_2

    .line 74
    .line 75
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    if-nez p4, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v1, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p3, p5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    :goto_1
    invoke-virtual {v1, p3, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 90
    .line 91
    .line 92
    :goto_2
    invoke-virtual {p6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p6, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/core/app/NotificationCompat$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    move-object/from16 v0, p3

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    new-instance v3, Landroid/widget/RemoteViews;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const v5, 0x7f0b0045

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Landroid/widget/RemoteViews;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    const v6, 0x7f0b0044

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const v5, 0x7f080346

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    const v5, 0x7f080348

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    const p2, 0x7f0800cb

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    const p2, 0x7f0800cd

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const/high16 p2, 0x40800000    # 4.0f

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    sget-object p2, Lcom/changdu/mobovideo/plugins/BitmapUtils;->INSTANCE:Lcom/changdu/mobovideo/plugins/BitmapUtils;

    .line 62
    .line 63
    const/high16 v0, 0x428a0000    # 69.0f

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    float-to-int v0, v0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const/high16 v0, 0x42b80000    # 92.0f

    .line 75
    .line 76
    invoke-virtual {p2, p1, v0}, Lcom/changdu/mobovideo/plugins/BitmapUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;F)F

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    float-to-int p2, p2

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    move-object v5, p0

    .line 86
    move-object v6, p1

    .line 87
    move-object/from16 v7, p6

    .line 88
    .line 89
    invoke-virtual/range {v5 .. v10}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    const/4 v0, 0x0

    .line 94
    const v5, 0x7f080103

    .line 95
    .line 96
    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    invoke-virtual {v3, v5, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const p2, 0x7f07012a

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    .line 114
    .line 115
    if-eqz p6, :cond_1

    .line 116
    .line 117
    invoke-static/range {p6 .. p6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    :cond_1
    :goto_0
    const/16 v11, 0x1c

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    const/4 v8, 0x0

    .line 125
    const/4 v9, 0x0

    .line 126
    const/4 v10, 0x0

    .line 127
    move-object v5, p0

    .line 128
    move-object v6, p1

    .line 129
    move-object/from16 v7, p7

    .line 130
    .line 131
    invoke-static/range {v5 .. v12}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const p2, 0x7f08008b

    .line 136
    .line 137
    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    invoke-virtual {v4, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    const p1, 0x7f0700cb

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, p2, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 148
    .line 149
    .line 150
    if-eqz p7, :cond_3

    .line 151
    .line 152
    invoke-static/range {p7 .. p7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    :cond_3
    :goto_1
    const p1, 0x7f08009b

    .line 157
    .line 158
    .line 159
    if-eqz v1, :cond_5

    .line 160
    .line 161
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    if-nez p2, :cond_4

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {v4, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    :goto_2
    const/16 p2, 0x8

    .line 176
    .line 177
    invoke-virtual {v4, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    .line 179
    .line 180
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "isLocalPush"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string v2, "localPushType"

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v2, "title"

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v2, "body"

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string v2, "pushStyle"

    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushContent;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    const-string p2, "pushType"

    .line 51
    .line 52
    sget-object v2, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string p1, "act"

    .line 62
    .line 63
    if-eqz p3, :cond_0

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/changdu/mobovideo/localpush/LocalPushNotificationFactory$PushConfigContentItem;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_1

    .line 70
    .line 71
    :cond_0
    move-object p2, v0

    .line 72
    :cond_1
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    return-object p1

    .line 80
    :catchall_0
    return-object v0
.end method
