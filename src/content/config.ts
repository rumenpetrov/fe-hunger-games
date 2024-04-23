import { defineCollection, z } from 'astro:content';

const pages = defineCollection({
  type: 'content',
  schema: z.object({
    type: z.string(),
    title: z.string(),
    description: z.string().optional(),
  }),
});

const challenges = defineCollection({
  type: 'content',
  // Type-check frontmatter using a schema
  schema: z.object({
    index: z.number(),
    isDraft: z.boolean(),
    title: z.string(),
    description: z.string().optional(),
    // Transform string to Date object
    pubDate: z.coerce.date(),
    updatedDate: z.coerce.date().optional(),
    heroImage: z.string().optional(),
    winner: z.string(),
    mvp: z.string(),
  }),
});

export const collections = {
  pages,
  challenges,
};
