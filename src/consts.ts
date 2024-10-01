// Place any global data in this file.
// You can import this data from anywhere in your site by using the `import` keyword.

export const SITE_TITLE = "FE hunger games";
export const SITE_DESCRIPTION = "Welcome!";

export class LeaderboardEntry {
  readonly wins: number;
  readonly mvp: number;

  constructor(props: Record<string, number>) {
    const { wins, mvp } = props;

    this.wins = wins;
    this.mvp = mvp;
  }

  get totalPoints() {
    return this.wins * 3 + this.mvp * 1;
  }
}
