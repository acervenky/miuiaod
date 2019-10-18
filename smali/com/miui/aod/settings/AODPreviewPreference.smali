.class public Lcom/miui/aod/settings/AODPreviewPreference;
.super Landroid/preference/Preference;
.source "AODPreviewPreference.java"


# instance fields
.field private m24HourFormat:Z

.field private mAodStyleController:Lcom/miui/aod/AODStyleController;

.field private mAodView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreview:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->updateTime()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    const v1, 0x7f1100ad

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/aod/AODStyleController;->inflateClockView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/aod/widget/AODSettings;->getAodCategoryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/aod/settings/AODPreviewPreference;->updateTime()V

    iget-object p0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method private updateTime()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->m24HourFormat:Z

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-boolean p0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->m24HourFormat:Z

    invoke-virtual {v0, p0}, Lcom/miui/aod/AODStyleController;->handleUpdateTime(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodView:Landroid/view/View;

    const v0, 0x7f1100d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/aod/settings/AODPreviewPreference;->addView(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodView:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/miui/aod/AODStyleController;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p1, v0, v1}, Lcom/miui/aod/AODStyleController;-><init>(ILandroid/view/LayoutInflater;)V

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodStyleController:Lcom/miui/aod/AODStyleController;

    iget-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f030031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodView:Landroid/view/View;

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mAodView:Landroid/view/View;

    return-object p0
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    const v0, 0x7f1100c4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/miui/aod/widget/ClockPanelView;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/miui/aod/widget/ClockPanelView;

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetBackground()V

    invoke-virtual {p0}, Lcom/miui/aod/widget/ClockPanelView;->resetClockHandState()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/aod/settings/AODPreviewPreference;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/aod/settings/AODPreviewPreference;->addView(Z)V

    :cond_0
    return-void
.end method
