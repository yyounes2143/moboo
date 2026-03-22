.class public Lio/flutter/plugins/googlemobileads/FlutterAdValue;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field final currencyCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final precisionType:I

.field final valueMicros:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/flutter/plugins/googlemobileads/FlutterAdValue;->precisionType:I

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/FlutterAdValue;->currencyCode:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/flutter/plugins/googlemobileads/FlutterAdValue;->valueMicros:J

    .line 9
    .line 10
    return-void
.end method
