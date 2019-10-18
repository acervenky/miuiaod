.class public Lcom/miui/aod/common/StyleInfo$PresetStyle;
.super Ljava/lang/Object;
.source "StyleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/aod/common/StyleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PresetStyle"
.end annotation


# instance fields
.field public mStyleParameters:[Ljava/lang/String;

.field public mTitleResId:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mTitleResId:I

    iput-object p2, p0, Lcom/miui/aod/common/StyleInfo$PresetStyle;->mStyleParameters:[Ljava/lang/String;

    return-void
.end method
