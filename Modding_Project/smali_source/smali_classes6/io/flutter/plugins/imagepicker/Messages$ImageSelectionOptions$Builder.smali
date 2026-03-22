.class public final Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxHeight:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maxWidth:Ljava/lang/Double;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private quality:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->maxWidth:Ljava/lang/Double;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->setMaxWidth(Ljava/lang/Double;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->maxHeight:Ljava/lang/Double;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->setMaxHeight(Ljava/lang/Double;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->quality:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions;->setQuality(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setMaxHeight(Ljava/lang/Double;)Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->maxHeight:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxWidth(Ljava/lang/Double;)Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->maxWidth:Ljava/lang/Double;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuality(Ljava/lang/Long;)Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$ImageSelectionOptions$Builder;->quality:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
